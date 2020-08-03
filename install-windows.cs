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