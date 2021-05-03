
#include "LuaManager.h"
#include "LuaSpellCastEvent.h"

#include "TES3MobileActor.h"
#include "TES3Reference.h"
#include "TES3Spell.h"

#include "LuaUtil.h"
#include "TES3Util.h"
#include "BitUtil.h"

namespace TES3 {
	const auto TES3_Spell_ctor = reinterpret_cast<TES3::Spell * (__thiscall*)(TES3::Spell*)>(0x4A9FD0);
	Spell::Spell() {
		TES3_Spell_ctor(this);
	}

	const auto TES3_Spell_dtor = reinterpret_cast<void(__thiscall*)(TES3::Spell*)>(0x4AA0E0);
	Spell::~Spell() {
		TES3_Spell_dtor(this);
	}

	const auto TES3_Spell_getLeastProficientEffect = reinterpret_cast<Effect*(__thiscall*)(const TES3::Spell*, const NPC * npc)>(0x4AA850);
	Effect* Spell::getLeastProficientEffect(const NPC* npc) const {
		return TES3_Spell_getLeastProficientEffect(this, npc);
	}

	const auto TES3_Spell_getLeastProficientSchool = reinterpret_cast<int (__thiscall*)(const TES3::Spell*, const NPC * npc)>(0x4AA910);
	int Spell::getLeastProficientSchool(const NPC* npc) const {
		return TES3_Spell_getLeastProficientSchool(this, npc);
	}

	float Spell::calculateCastChance(Reference* caster, bool checkMagicka, int* weakestSchoolId) {
		MobileActor* mobileCaster = nullptr;
		if (caster) {
			mobileCaster = caster->getAttachedMobileActor();
		}

		return calculateCastChance(mobileCaster, checkMagicka, weakestSchoolId);
	}

	const auto TES3_Spell_calculateCastChance = reinterpret_cast<float(__thiscall *)(Spell*, MobileActor*, bool, int*)>(0x4AA950);
	float Spell::calculateCastChance(MobileActor* caster, bool checkMagicka, int* weakestSchoolId) {
		return TES3_Spell_calculateCastChance(this, caster, checkMagicka, weakestSchoolId);
	}

	float Spell::castChanceOnCast(TES3::MobileActor* caster, bool checkMagicka, int* weakestSchoolId) {
		// Call the original function.
		float castChance = calculateCastChance(caster, checkMagicka, weakestSchoolId);

		// Ignore ability spells, as they are automatically activated as NPCs enter simulation range.
		if (castType != TES3::SpellCastType::Ability && mwse::lua::event::SpellCastEvent::getEventEnabled()) {
			// Trigger event, and update the cast chance.
			mwse::lua::LuaManager& luaManager = mwse::lua::LuaManager::getInstance();
			auto stateHandle = luaManager.getThreadSafeStateHandle();
			sol::table eventData = stateHandle.triggerEvent(new mwse::lua::event::SpellCastEvent(this, caster, castChance, *weakestSchoolId));
			if (eventData.valid()) {
				castChance = eventData.get_or<float>("castChance", castChance);
			}
		}

		return castChance;
	}

	bool Spell::getSpellFlag(SpellFlag::Flag flag) const {
		return BITMASK_TEST(spellFlags, flag);
	}

	void Spell::setSpellFlag(SpellFlag::Flag flag, bool value) {
		BITMASK_SET(spellFlags, flag, value);
	}

	bool Spell::getAutoCalc() const {
		return getSpellFlag(SpellFlag::Flag::AutoCalc);
	}

	void Spell::setAutoCalc(bool value) {
		setSpellFlag(SpellFlag::Flag::AutoCalc, value);
	}

	bool Spell::getPlayerStart() const {
		return getSpellFlag(SpellFlag::Flag::PCStartSpell);
	}

	void Spell::setPlayerStart(bool value) {
		setSpellFlag(SpellFlag::Flag::PCStartSpell, value);
	}

	bool Spell::getAlwaysSucceeds() const {
		return getSpellFlag(SpellFlag::Flag::AlwaysSucceeds);
	}

	void Spell::setAlwaysSucceeds(bool value) {
		setSpellFlag(SpellFlag::Flag::AlwaysSucceeds, value);
	}

	size_t Spell::getActiveEffectCount() {
		size_t count = 0;
		for (size_t i = 0; i < 8; i++) {
			if (effects[i].effectID != TES3::EffectID::None) {
				count++;
			}
		}
		return count;
	}

	int Spell::getFirstIndexOfEffect(int effectId) {
		for (size_t i = 0; i < 8; i++) {
			if (effects[i].effectID = effectId) {
				return i;
			}
		}
		return -1;
	}

	float Spell::calculateCastChance_lua(sol::table params) {
		bool checkMagicka = mwse::lua::getOptionalParam<bool>(params, "checkMagicka", true);
		sol::object caster = params["caster"];
		if (caster.is<TES3::Reference>()) {
			return calculateCastChance(caster.as<TES3::Reference*>(), checkMagicka);
		}
		else if (caster.is<TES3::MobileActor>()) {
			return calculateCastChance(caster.as<TES3::MobileActor*>(), checkMagicka);
		}

		return 0.0f;
	}

	std::reference_wrapper<Effect[8]> Spell::getEffects() {
		return std::ref(effects);
	}

}

MWSE_SOL_CUSTOMIZED_PUSHER_DEFINE_TES3(TES3::Spell)
