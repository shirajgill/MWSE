/************************************************************************
	
	xScriptRunning.cpp - Copyright (c) 2008 The MWSE Project
	http://www.sourceforge.net/projects/mwse

	This program is free software; you can redistribute it and/or
	modify it under the terms of the GNU General Public License
	as published by the Free Software Foundation; either version 2
	of the License, or (at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program; if not, write to the Free Software
	Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301, USA.

**************************************************************************/

#include "VMExecuteInterface.h"
#include "Stack.h"
#include "InstructionInterface.h"
#include "TES3Util.h"
#include "mwAdapter.h"
#include "VirtualMachine.h"
#include "ScriptUtil.h"

using namespace mwse;

namespace mwse
{
	class xScriptRunning : mwse::InstructionInterface_t
	{
	public:
		xScriptRunning();
		virtual float execute(VMExecuteInterface &virtualMachine);
		virtual void loadParameters(VMExecuteInterface &virtualMachine);
	};

	static xScriptRunning xScriptRunningInstance;

	xScriptRunning::xScriptRunning() : mwse::InstructionInterface_t(OpCode::xScriptRunning) {}

	void xScriptRunning::loadParameters(mwse::VMExecuteInterface &virtualMachine) {
	}

	float xScriptRunning::execute(mwse::VMExecuteInterface &virtualMachine)
	{
		// Get parameters.
		mwseString_t& scriptName = virtualMachine.getString(mwse::Stack::getInstance().popLong());

		// Get other context information for opcode call.
		SCPTRecord_t* script = &virtualMachine.getScript();

		// Call the original function.
		bool result = mwse::mwscript::ScriptRunning(script, scriptName.c_str());

		mwse::Stack::getInstance().pushLong(result);

		return 0.0f;
	}
}