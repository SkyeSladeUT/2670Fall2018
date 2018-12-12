using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Events;
using UnityEngine.SceneManagement;
using UnityEngine.UI;

public class CollisionScript : MonoBehaviour
{
	public Runner player;
	public Text Coins;
	public UnityEvent GameOver;

	private void Start()
	{
		player.CollectedCoins = 0;
		player.Score = 0;
		Coins.text = "$0";
	}
	

	private void OnTriggerEnter(Collider other)
	{
		switch (other.tag)
		{
			case "Obstacle":
				GameOver.Invoke();
				break;
			case "Coin":
				player.CollectedCoins++;
				Coins.text = "$" + player.CollectedCoins;
				break;
			default:
				break;
		}
	}
}
