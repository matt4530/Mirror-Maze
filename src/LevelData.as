package  
{
	/**
	 * ...
	 * @author UnknownGuardian
	 */
	public class LevelData
	{
		
		public function LevelData() 
		{
			
		}
		public static var currentLevel:int = 0;
		
		private static var traps:Array = [7,46,47];
		private static var grounds:Array = [0, 44, 41];
		
		public static function isTrap(num:int):Boolean { return (traps.indexOf(num) != -1); }
		public static function isGround(num:int):Boolean { return ((grounds.indexOf(num) != -1) || isTrap(num)); }
		
		public static function retrieveLevel(level:Array, levelNum:int = 1):void
		{
			if (levelNum == -1) //original intro level
			{
				level[0]	= [25,25,25,25,25,25,25,25,25,25,25,25,25,25,25,25,25];
				level[1]	= [25,44,44,44,44,44,44,25,44,25,44,44,44,44,44,44,25];
				level[2]	= [25,44,25,25,25,25,44,25,44,25,44,25,25,25,25,44,25];
				level[3]	= [25,44,25,25,25,25,44,25,44,25,44,25,25,25,25,44,25];
				level[4]	= [25,44,25,44,35,25,44,25,44,25,44,25,44,35,25,44,25];
				level[5]	= [25,44,25,44,44,25,44,25,44,25,44,25,44,44,25,44,25];
				level[6]	= [25,44,25,35,44,25,44,25,44,25,44,25,35,44,25,44,25];
				level[7]	= [25,44,25,44,44,25,44,25,44,25,44,25,44,44,25,44,25];
				level[8]	= [25,44,25,44,35,25,44,25,44,25,44,25,44,35,25,44,25];
				level[9]	= [25,44,25,44,44,25,44,25,44,25,44,25,44,44,25,44,25];
				level[10]	= [25,44,25,25,25,25,44,25,44,25,44,25,25,25,25,44,25];
				level[11]	= [25,44,25,25,25,25,44,25,44,25,44,25,25,25,25,44,25];
				level[12]	= [25,44,44,44,44,44,44,44,44,44,44,44,44,44,44,44,25];
				level[13]	= [25,25,25,25,25,25,25,25,44,25,25,25,25,25,25,25,25];
				level[14]	= [25,44,44,44,44,44,44,44,44,44,44,44,44,44,44,44,25];
				level[15]	= [25,25,25,25,25,25,25,25,25,25,25,25,25,25,25,25,25];
			}
			if (levelNum == 0)
			{
				level[0]	= [26,26,26,26,26,26,26,26,26,26,26,26,26,26,26,26,26];
				level[1]	= [26,43,7,7,7,7,7,7,7,7,7,7,7,7,7,43,26];
				level[2]	= [26,43,11,11,41,41,41,41,41,41,41,41,41,11,11,43,26];
				level[3]	= [26,43,11,41,41,41,41,41,41,41,41,41,41,41,11,43,26];
				level[4]	= [26,43,41,41,41,41,41,41,41,41,41,41,41,41,41,43,26];
				level[5]	= [26,43,41,41,41,41,41,41,41,41,41,41,41,41,41,43,26];
				level[6]	= [26,43,41,41,41,41,41,41,41,41,41,41,41,41,41,43,26];
				level[7]	= [26,43,41,41,41,41,41,41,41,41,41,41,41,41,41,43,26];
				level[8]	= [26,43,41,41,41,41,41,41,41,41,41,41,41,41,41,43,26];
				level[9]	= [26,43,41,41,41,41,41,41,41,41,41,41,41,41,41,43,26];
				level[10]	= [26,43,41,41,41,41,41,41,41,41,41,41,41,41,41,43,26];
				level[11]	= [26,43,41,41,41,41,41,41,41,41,41,41,41,41,41,43,26];
				level[12]	= [26,43,11,41,41,41,41,41,41,41,41,41,41,41,11,43,26];
				level[13]	= [26,43,11,11,41,41,41,41,41,41,41,41,41,11,11,43,26];
				level[14]	= [26,43,43,43,43,43,43,41,41,41,43,43,43,43,43,43,26];
				level[15]	= [26,26,26,26,26,26,26,26,26,26,26,26,26,26,26,26,26];
			}
			else if (levelNum == 1)
			{
				level[0]	= [9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9];
				level[1]	= [9,44,44,44,44,44,44,44,44,44,44,44,44,44,44,44,9];
				level[2]	= [9,44,25,25,25,25,25,25,25,25,25,25,25,25,25,44,9];
				level[3]	= [9,44,25,44,25,44,25,44,25,44,25,44,25,44,25,44,9];
				level[4]	= [9,44,44,44,44,44,44,44,25,44,44,44,44,44,44,44,9];
				level[5]	= [9,25,25,25,25,25,25,44,25,44,25,25,25,25,25,25,9];
				level[6]	= [9,44,44,44,44,44,44,44,25,44,44,44,44,44,44,44,9];
				level[7]	= [9,44,25,25,25,25,25,25,25,25,25,25,25,25,25,44,9];
				level[8]	= [9,44,44,44,44,44,44,44,25,44,44,44,44,44,44,44,9];
				level[9]	= [9,25,44,25,25,44,25,25,25,25,25,44,25,25,44,25,9];
				level[10]	= [9,44,44,44,44,44,44,44,25,44,44,44,44,44,44,44,9];
				level[11]	= [9,25,25,25,25,25,25,44,25,44,25,25,25,25,25,25,9];
				level[12]	= [9,44,44,44,44,44,44,44,25,44,44,44,44,44,44,44,9];
				level[13]	= [9,44,25,25,25,25,25,25,25,25,25,25,25,25,25,44,9];
				level[14]	= [9,44,44,44,44,44,44,44,25,44,44,44,44,44,44,44,9];
				level[15]	= [9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9];
			}
			else if (levelNum == 2)
			{
				level[0]	= [9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9];
				level[1]	= [9,44,44,44,44,44,44,44,44,44,44,44,44,44,44,44,9];
				level[2]	= [9,44,25,25,25,25,25,25,25,44,25,44,25,44,25,44,9];
				level[3]	= [9,44,44,44,44,44,44,44,25,25,25,25,25,25,25,44,9];
				level[4]	= [9,44,25,44,25,44,25,44,25,44,44,44,44,44,25,44,9];
				level[5]	= [9,44,25,44,25,25,25,25,25,25,25,25,25,44,25,44,9];
				level[6]	= [9,44,44,44,25,44,44,44,44,44,44,44,25,44,44,44,9];
				level[7]	= [9,25,25,44,25,25,25,25,25,25,25,25,25,44,25,25,9];
				level[8]	= [9,44,44,44,44,44,44,44,25,44,44,44,44,44,44,44,9];
				level[9]	= [9,44,25,44,25,44,25,44,25,44,25,25,25,25,25,44,9];
				level[10]	= [9,44,44,44,44,44,44,44,25,44,25,44,44,44,44,44,9];
				level[11]	= [9,44,25,25,25,25,25,25,25,44,25,25,25,25,25,25,9];
				level[12]	= [9,44,44,44,44,44,44,44,25,44,44,44,44,44,44,44,9];
				level[13]	= [9,25,25,25,25,25,25,44,25,25,25,25,25,25,25,44,9];
				level[14]	= [9,44,44,44,44,44,44,44,25,44,44,44,44,44,44,44,9];
				level[15]	= [9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9];
			}
			else if (levelNum == 3)
			{
				level[0]	= [9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9];
				level[1]	= [9,44,25,44,44,44,44,44,44,44,44,44,44,44,25,44,9];
				level[2]	= [9,44,25,44,25,25,25,44,25,44,25,25,44,25,25,44,9];
				level[3]	= [9,44,44,44,25,44,25,44,25,44,44,44,44,44,44,44,9];
				level[4]	= [9,44,25,44,25,44,25,44,25,25,25,25,25,25,44,44,9];
				level[5]	= [9,44,25,44,44,44,44,44,25,44,44,44,44,44,44,44,9];
				level[6]	= [9,44,25,44,44,44,44,44,25,44,44,44,25,25,25,25,9];
				level[7]	= [9,44,25,44,25,44,25,44,25,25,25,44,25,44,44,44,9];
				level[8]	= [9,44,25,44,25,44,25,44,25,44,25,44,44,44,25,44,9];
				level[9]	= [9,44,25,25,25,25,25,25,25,44,25,44,25,44,25,44,9];
				level[10]	= [9,44,44,44,25,44,44,44,25,44,44,44,25,44,25,44,9];
				level[11]	= [9,44,44,44,25,44,25,44,25,25,25,44,25,25,25,44,9];
				level[12]	= [9,44,25,44,25,44,25,44,25,44,44,44,44,44,25,44,9];
				level[13]	= [9,44,25,44,25,44,25,44,25,44,25,44,25,25,25,44,9];
				level[14]	= [9,44,25,44,44,44,25,44,25,44,44,44,44,44,44,44,9];
				level[15]	= [9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9];
			}
			else if (levelNum == 4)
			{
				level[0]	= [9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9];
				level[1]	= [9,44,44,44,44,44,25,44,44,44,25,44,44,44,44,44,9];
				level[2]	= [9,25,25,25,25,25,25,44,25,44,25,25,25,25,25,25,9];
				level[3]	= [9,44,44,44,44,44,44,44,25,44,44,44,44,44,44,44,9];
				level[4]	= [9,44,25,44,25,44,25,44,25,44,25,44,25,44,25,44,9];
				level[5]	= [9,44,25,25,25,25,25,25,25,25,25,25,25,25,25,44,9];
				level[6]	= [9,44,44,44,44,44,44,44,46,44,44,44,44,44,44,44,9];
				level[7]	= [9,25,25,25,25,25,25,44,25,25,25,44,25,25,25,25,9];
				level[8]	= [9,44,25,44,25,44,25,44,25,44,25,44,25,44,44,25,9];
				level[9]	= [9,44,25,44,25,25,44,44,25,25,25,44,25,25,25,25,9];
				level[10]	= [9,44,25,44,25,44,25,44,25,44,25,44,25,44,44,44,9];
				level[11]	= [9,44,25,44,25,44,25,44,46,44,25,44,25,44,25,25,9];
				level[12]	= [9,44,44,44,44,44,44,44,25,44,44,44,44,44,44,44,9];
				level[13]	= [9,44,25,25,25,25,25,25,25,25,25,25,25,25,25,44,9];
				level[14]	= [9,44,44,44,44,44,44,44,25,44,44,44,44,44,44,44,9];
				level[15]	= [9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9];
			}
			else if (levelNum == 5)
			{
				level[0]	= [9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9];
				level[1]	= [9,44,25,44,44,44,44,44,44,44,44,44,44,44,25,25,9];
				level[2]	= [9,44,25,44,25,25,44,44,25,44,44,25,25,44,44,44,9];
				level[3]	= [9,44,44,44,44,25,44,25,25,44,44,44,25,44,25,44,9];
				level[4]	= [9,25,25,25,25,25,44,44,25,44,25,44,44,44,25,44,9];
				level[5]	= [9,25,44,44,44,25,44,25,25,25,25,25,25,25,25,44,9];
				level[6]	= [9,25,44,25,25,25,44,44,25,44,44,44,44,44,44,44,9];
				level[7]	= [9,25,44,44,44,25,44,25,25,44,25,25,25,25,25,25,9];
				level[8]	= [9,25,44,25,44,44,44,44,25,44,44,44,44,44,44,44,9];
				level[9]	= [9,25,44,25,25,25,25,44,25,25,25,44,25,44,25,44,9];
				level[10]	= [9,25,44,44,44,44,44,25,25,25,44,44,25,44,44,44,9];
				level[11]	= [9,25,25,25,44,25,25,25,25,25,44,25,44,25,25,25,44];
				level[12]	= [9,25,44,44,44,44,44,44,25,25,44,44,44,44,44,25,9];
				level[13]	= [9,25,44,25,25,25,25,25,25,25,25,25,25,25,44,25,9];
				level[14]	= [9,44,44,44,44,44,44,44,25,44,44,44,44,44,44,44,9];
				level[15]	= [9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9];
			}
		}
		
	}

}