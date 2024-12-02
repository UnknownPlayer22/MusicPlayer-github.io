/* META Data - Strings
 */
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
//
//Global Variables
int appWidth,  appHeight;
float metaDataX1, metaDataY1, metaDataWidth1, metaDataHeight1;
float metaDataX2, metaDataY2, metaDataWidth2, metaDataHeight2;
float metaDataX3, metaDataY3, metaDataWidth3, metaDataHeight3;
//
Minim minim;
int numberOfSongs = 8;
AudioPlayer[] playList = new AudioPlayer[numberOfSongs];
//AudioMetaData[] playListTitleMetaData = new AudioMetaData[numberOfSongs];
//AudioMetaData[] playListPostionMetaData = new AudioMetaData[numberOfSongs]; //might change
//AudioMetaData[] playListTimeRemainingMetaData = new AudioMetaData[numberOfSongs]; //might change
//AudioMetaData[] playListTotalTimeMetaData = new AudioMetaData[numberOfSongs]; //might change
int currentSong = numberOfSongs - numberOfSongs;
//Review if more meta data needed
//
void setup()
{
  fullScreen();
  appWidth = displayWidth;
  appHeight = displayHeight;
  //
  // Load Music
  String musicPathway = "Music/";
  String mp3FileName = ".mp3";
  //Alphebetical order, same as OS ordering files
  String hardedmphonk160048 = "hard-edm-phonk-160048";
  String phonkphenixphonkon180000 = "phonk-phenix-phonk-on-180000";
  String waitingliminalspacesmusic218874 = "waiting-liminal-spaces-music-218874";
  //
  //Add Reading into Array: ../../../Music/groove.mp3
  String directory = "../../../" + musicPathway;
  println ( currentSong, directory );
  String file = directory + waitingliminalspacesmusic218874 + mp3FileName;
  println (file);
  playList[currentSong] = minim.loadFile( "../../../Music/groove.mp3" );
  //file = directory + phonkphenixphonkon180000d + mp3FileName;
  println (file);
  //playList[currentSong+=1] = minim.loadFile( file );
  println( currentSong, playList[currentSong] );
  //file = directory + hard-edm-phonk-160048 + mp3FileName;
  println (file);
  //playList[currentSong+=1] = minim.loadFile( file );
  //
  currentSong = 0;
  playList[currentSong].play();
  //
  //Population
  metaDataX1 = appWidth*1/10; //Title
  metaDataY1 = appHeight*4/10;
  metaDataWidth1 = appWidth*8/10;
  metaDataHeight1 = appHeight*1/10;
  metaDataX2 = appWidth*1/10; //Song Position
  metaDataY2 = appHeight*3/10;
  metaDataWidth2 = appWidth*2/10;
  metaDataHeight2 = appHeight*1/10;
  metaDataX3 = appWidth*5/10; //Total Song Length | Time Remaining
  metaDataY3 = appHeight*5/10;
  metaDataWidth3 = appWidth*4/10;
  metaDataHeight3 = appHeight*1/10;
  //
  //DIV //X, Y, Width, Height
  rect( metaDataX1, metaDataY1, metaDataWidth1, metaDataHeight1 );
  rect( metaDataX2, metaDataY2, metaDataWidth2, metaDataHeight2 );
  rect( metaDataX3, metaDataY3, metaDataWidth3, metaDataHeight3 );
} //End setup
//
void draw() {
} //End draw
//
void mousePressed() {
} //End mousePressed
//
void keyPressed() {
} //End keyPressed
//
//End MAIN
