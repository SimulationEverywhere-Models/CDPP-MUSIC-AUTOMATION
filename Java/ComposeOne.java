import jm.JMC;
import jm.music.data.*;
import jm.util.*; 

import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;

import java.util.List;
import java.util.ArrayList;

public class ComposeOne implements JMC {    
    public static void main(String[] args){
    
	String File_Name_In;
	String File_Name_Midi;

	File_Name_In = args[0];
	File_Name_Midi=File_Name_In.concat (".mid");


    List<String> wordList = new ArrayList<String>();

BufferedReader br = null;
try {
// attempt to open the words file
// by Saeed br = new BufferedReader( new FileReader( "FantasieR.txt" ) );
br = new BufferedReader( new FileReader( File_Name_In ) );

String word;

// loop and read a line from the file as long as we dont get null
while( ( word = br.readLine() ) != null )
// add the read word to the wordList
wordList.add( word );
} catch( IOException e ) {
e.printStackTrace();
} finally {
try {
// attempt the close the file
br.close();
} catch( IOException ex ) {
ex.printStackTrace();
}
}
// initialize a new string array equal to the size of the wordList
String[] words = new String[ wordList.size() ];

// call the wordList's toArray method to and transfer items from
// wordList to our string array words
wordList.toArray( words );

int[] nums = new int[words.length];
for(int i=0;i<words.length;i++){
nums[i] = Integer.parseInt(words[i]);
}

    int[] pitches1 = new int[nums.length];
    int[] pitches2 = new int[nums.length];
    double[] rhythmValues = new double[nums.length];
    
    for( int i = 0; i < nums.length; i++ ){
        pitches1[i]=nums[i];
        pitches2[i]=nums[i];
        rhythmValues[i]=QUARTER_NOTE;
    }
    
    Note[] notes1 = new Note[pitches1.length];
    Note[] notes2 = new Note[pitches2.length];
    
for (int i = 0; i < notes1.length; i++) {
  // A note is made up of a pitch and duration
  notes1[i] = new Note(pitches1[i], rhythmValues[i]);
}
for (int i = 0; i < notes2.length; i++) {
  // A note is made up of a pitch and duration
  notes2[i] = new Note(pitches2[i], rhythmValues[i]);
}
// A phrase is made up of notes
Phrase phrase1 = new Phrase(notes1);
Part pianoPart1 = new Part("Piano", CLARINET,1);
// A part is made up of phrases
pianoPart1.add(phrase1);

Phrase phrase2 = new Phrase(notes2);
Part pianoPart2 = new Part("Trumpet", TRUMPET,2);
// A part is made up of phrases
pianoPart2.add(phrase2);
// A score is made up of part(s)
int tempo = 240;
Score daisy = new Score("Life Game Test", tempo);
daisy.addPart(pianoPart1);
daisy.addPart(pianoPart2);
// In key of F: 1 flat
daisy.setKeySignature(0);
// In 3/4 time
daisy.setNumerator(3);
daisy.setDenominator(4);
View.notate(daisy);
// Write out score to MIDI file
// By Saeed Write.midi(daisy, "Life2LTest.mid");
Write.midi(daisy, File_Name_Midi);

    }
}
