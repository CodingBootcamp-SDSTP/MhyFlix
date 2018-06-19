import java.util.ArrayList;

class StringDatabase
{
	private ArrayList<String> reasonableText;

	public StringDatabase() {
		reasonableText = new ArrayList<String>();
		reasonableText.add("Every person is a book, each year a chapter.");
		reasonableText.add("Your motivations are your own.You must master them if you want to do great work.");
		reasonableText.add("Everyday may not be a good day but there is good in every day.");
		reasonableText.add("A problem is a chance for you to do your best.");
		reasonableText.add("Empty pockets never held anyone back.Only empty heads and empty hearts can do that.");
		reasonableText.add("Money is like manure, of very little use except it be spread.");
	}

	public ArrayList<String> getStrings() {
		return(reasonableText);
	}
}
