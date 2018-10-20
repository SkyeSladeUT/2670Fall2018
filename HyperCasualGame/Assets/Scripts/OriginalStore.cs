using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class OriginalStore : MonoBehaviour
{

	public FloatData BoostTime, BoostValue;
	public Text CurrentBoostTime;
	public GameObject BoostBuyButton;
	public Player player;
	public Text playerCash;

	private void Start()
	{
		CurrentBoostTime.text = "Current Time: " + BoostTime.Value;
		playerCash.text = "$" + player.Coins;
	}

	public void IncreaseTime()
	{
		if (player.Coins >= BoostValue.Value)
		{
			BoostTime.value++;
			BoostValue.value += 50;
			CurrentBoostTime.text = "Current Time: " + BoostTime.Value;
			player.Coins -= (int) BoostValue.Value;
			playerCash.text = "$" + player.Coins;
		}
		if (BoostTime.Value >= 10)
		{
			BoostBuyButton.SetActive(false);
		}
	}
}
