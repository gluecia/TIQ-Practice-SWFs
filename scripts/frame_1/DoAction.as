_global.setOpacity = false;
_global.transitionOpacity = 50;
Stage.showMenu = false;

var keyListener = new Object();

keyListener.onKeyDown = function()
{

   switch(Key.getAscii())
   {
      // 1 -> Q36
      case 49:
         _root.gotoAndStop(92);

         skip._visible = true;
         skip1._visible = true;
         skip2._visible = false;
         skip3._visible = false;
         skip4._visible = false;
         skip5._visible = false;
         skip6._visible = false;
         break;

      // 2 -> Q56
      case 50:
         _root.gotoAndStop(130);

         skip._visible = true;
         skip1._visible = true;
         skip2._visible = true;
         skip3._visible = false;
         skip4._visible = false;
         skip5._visible = false;
         skip6._visible = false;
         break;

      // 3 -> Q68
      case 51:
         _root.gotoAndStop(142);

         skip._visible = true;
         skip1._visible = true;
         skip2._visible = true;
         skip3._visible = true;
         skip4._visible = false;
         skip5._visible = false;
         skip6._visible = false;
         break;
         
      // 4 -> Q81
      case 52:
         _root.gotoAndStop(174);

         skip._visible = true;
         skip1._visible = true;
         skip2._visible = true;
         skip3._visible = true;
         skip4._visible = true;
         skip5._visible = false;
         skip6._visible = false;
         break;
         
      // 5 -> Q84
      case 53:
         _root.gotoAndStop(177);

         skip._visible = true;
         skip1._visible = true;
         skip2._visible = true;
         skip3._visible = true;
         skip4._visible = true;
         skip5._visible = false;
         skip6._visible = false;
         break;

      // 6 -> Q91
      case 54:
         _root.gotoAndStop(184);

         skip._visible = true;
         skip1._visible = true;
         skip2._visible = true;
         skip3._visible = true;
         skip4._visible = true;
         skip5._visible = true;
         skip6._visible = true;
         break;

      // 7 -> Q100
      case 55:
         _root.gotoAndStop(193);

         skip._visible = true;
         skip1._visible = true;
         skip2._visible = true;
         skip3._visible = true;
         skip4._visible = true;
         skip5._visible = true;
         skip6._visible = true;
         break;

      // 8 -> Q102
      case 56:
         // hacky evil solution
         _root.gotoAndStop(195);
         _root.nextFrame();

         skip._visible = true;
         skip1._visible = true;
         skip2._visible = true;
         skip3._visible = true;
         skip4._visible = true;
         skip5._visible = true;
         skip6._visible = true;
         break;

      // 9 -> Q106
      case 57:
         _root.gotoAndPlay(203);

         skip._visible = true;
         skip1._visible = true;
         skip2._visible = true;
         skip3._visible = true;
         skip4._visible = true;
         skip5._visible = true;
         skip6._visible = true;
         break;

      // 0 -> Q108
      case 48:
         _root.gotoAndPlay(208);

         skip._visible = true;
         skip1._visible = true;
         skip2._visible = true;
         skip3._visible = true;
         skip4._visible = true;
         skip5._visible = true;
         skip6._visible = true;
         break;

      // T -> Toggling opacity between Epic 10 questions
      case 84:
      case 116:
         _global.setOpacity = !_global.setOpacity;
		 break;

      // F -> Resetting lives counter
      case 70:
      case 102:
         _root.lives.gotoAndStop(1);
		 break;
		 
      // B -> Go back a level
      case 66:
      case 98:
         _root.prevFrame();
		 break;

	  // D -> Toggle transparent 102 dots
      case 68:
      case 100:
         _global.project102 = !_global.project102;
   }

   // hides the yes/no buttons for the shoop question
   shoopyes._visible = false;
   
   Mouse.show();
};

if (!_global.listenerAdded) {
   Key.addListener(keyListener);
   _global.listenerAdded = true;
}