/*
 *      _________  __      __
 *    _/        / / /____ / /________ ____ ____  ___
 *   _/        / / __/ -_) __/ __/ _ `/ _ `/ _ \/ _ \
 *  _/________/  \__/\__/\__/_/  \_,_/\_, /\___/_//_/
 *                                   /___/
 * 
 * Tetragon : Game Engine for multi-platform ActionScript projects.
 * http://www.tetragonengine.com/ - Copyright (C) 2012 Sascha Balkau
 * 
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 * 
 * The above copyright notice and this permission notice shall be included in all
 * copies or substantial portions of the Software.
 * 
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
 * SOFTWARE.
 */
package tetragon.setup
{
	import tetragon.command.racetrack.RTCameraAltitudeCommand;
	import tetragon.command.racetrack.RTDrawDistanceCommand;
	import tetragon.command.racetrack.RTFOVCommand;
	import tetragon.data.racetrack.proto.RTLevelsCatalog;
	import tetragon.data.racetrack.proto.RTObjectsCatalog;
	import tetragon.file.parsers.RTLevelsCatalogDataParser;
	import tetragon.file.parsers.RTObjectsCatalogDataParser;
	
	
	/**
	 * Setup phase class for the Tetragon Racetrack Extension.
	 */
	public class RacetrackExtensionSetup extends Setup
	{
		//-----------------------------------------------------------------------------------------
		// Getters & Setters
		//-----------------------------------------------------------------------------------------
		
		/**
		 * @inheritDoc
		 */
		override public function get name():String
		{
			return "racetrackExtension";
		}
		
		
		//-----------------------------------------------------------------------------------------
		// Private Methods
		//-----------------------------------------------------------------------------------------
		
		/**
		 * @inheritDoc
		 */
		override protected function registerModules():void
		{
		}
		
		
		/**
		 * @inheritDoc
		 */
		override protected function registerCLICommands():void
		{
			registrar.registerCommand("racetrack", "RTFieldOfView", "rtfov", RTFOVCommand, "Changes the field of view of the racetrack camera.");
			registrar.registerCommand("racetrack", "RTDrawDistance", "rtdd", RTDrawDistanceCommand, "Changes the draw distance of the racetrack.");
			registrar.registerCommand("racetrack", "RTCameraAlt", "rtca", RTCameraAltitudeCommand, "Changes the aititude of the racetrack camera.");
		}
		
		
		/**
		 * @inheritDoc
		 */
		override protected function registerResourceFileTypes():void
		{
		}
		
		
		/**
		 * @inheritDoc
		 */
		override protected function registerComplexTypes():void
		{
		}
		
		
		/**
		 * @inheritDoc
		 */
		override protected function registerDataTypes():void
		{
			registrar.registerDataType(RTObjectsCatalog.RT_OBJECTS_CATALOG,
				RTObjectsCatalogDataParser);
			registrar.registerDataType(RTLevelsCatalog.RT_LEVELS_CATALOG,
				RTLevelsCatalogDataParser);
		}
		
		
		/**
		 * @inheritDoc
		 */
		override protected function registerResourceProcessors():void
		{
		}
		
		
		/**
		 * @inheritDoc
		 */
		override protected function registerEntitySystems():void
		{
		}
		
		
		/**
		 * @inheritDoc
		 */
		override protected function registerEntityComponents():void
		{
		}
	}
}
