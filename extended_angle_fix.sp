/*
	Extended Angle Fix - Sets the correct viewangles for discarded commands

	Copyright (C) 2022 raklatif

	This program is free software: you can redistribute it and/or modify
	it under the terms of the GNU General Public License as published by
	the Free Software Foundation, either version 3 of the License, or
	(at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program.  If not, see <https://www.gnu.org/licenses/>.
*/

#include <sourcemod>

public Plugin myinfo = 
{ 
	name = "Extended Angle Fix", 
	author = "raklatif", 
	description = "Sets the correct viewangles for discarded commands", 
	version = "1.0", 
	url = "github.com/r4klatif" 
};

public void OnPlayerRunCmdPost(int client, int buttons, int impulse, const float vel[3], const float angles[3], int weapon, int subtype, int cmdnum, int tickcount, int seed, const int mouse[2])
{
	float eye_angles[3];
	float v_angle[3];

	GetEntPropVector(client, Prop_Data, "v_angle", v_angle);

	eye_angles[0] = GetEntPropFloat(client, Prop_Send, "m_angEyeAngles[0]");
	eye_angles[1] = GetEntPropFloat(client, Prop_Send, "m_angEyeAngles[1]");
	eye_angles[2] = v_angle[2];

	SetEntPropVector(client, Prop_Data, "v_angle", eye_angles);
}
