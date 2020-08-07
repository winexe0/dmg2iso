/*
 *	DMG2ISO Installer for Windows
 *  install-windows.cs
 *	Copyright (c) 2020 Aryan <aryan.chandna@icloud.com>
 *	This program is free software; you can redistribute it and/or
 *      modify it under the terms of the GNU General Public License 
 *	as published by the Free Software Foundation.
 *
 *	This program is distributed in the hope that it will be useful,
 *	but WITHOUT ANY WARRANTY; without even the implied warranty of
 *	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 *	GNU General Public License for more details.
 *
 * 	You should have received a copy of the GNU General Public License
 *	along with this program; if not, write to the Free Software
 *	Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301, USA.
 */
using System.Diagnostics;
class install {
static void Main()
{
Process process = new Process();
process.StartInfo.FileName = "cmd.exe";
process.StartInfo.Arguments = "/C install-windows.bat";
process.StartInfo.WindowStyle = ProcessWindowStyle.Normal;
process.Start();
System.Console.WriteLine("Follow the MinGW Installation to compile dmg2iso.");
System.Console.WriteLine("Don't change the Installation directory.");
System.Console.WriteLine("It will cause problems.");
System.Console.WriteLine("When It's done click on continue.");
System.Console.WriteLine("Check the box on mingw32-gcc-g++ and click on installation on the upper left corner.");
System.Console.WriteLine("Click on apply changes and click on apply. When it is done, click on close.");
process.WaitForExit();
}
}
