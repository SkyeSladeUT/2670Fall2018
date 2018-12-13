using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class MenuStartScreen : MonoBehaviour
{

	public Text HighScore;
	public Text Coins;
	public Runner player;
	
	void Start ()
	{
		HighScore.text = "High Score: " + player.HighScore;
		Coins.text = "$" + player.Coins;
	}
}
