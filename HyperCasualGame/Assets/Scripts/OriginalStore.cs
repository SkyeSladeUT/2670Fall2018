using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class OriginalStore : MonoBehaviour
{

	public FloatData BoostTime, BoostValue;
	public Text CurrentBoostTime;
	public Text BoostCost;
	public GameObject BoostBuyButton;
	public Player player;
	public Text playerCash;

	private void Start()
	{
		CurrentBoostTime.text = "Current Time: " + BoostTime.Value;
		playerCash.text = "$" + player.Coins;
		BoostCost.text = "$" + BoostValue.Value;
	}

	public void IncreaseTime()
	{
		if (player.Coins >= BoostValue.Value)
		{
			BoostTime.value++;
			CurrentBoostTime.text = "Current Time: " + BoostTime.Value;
			player.Coins -= (int) BoostValue.Value;
			BoostValue.value += 50;
			playerCash.text = "$" + player.Coins;
			BoostCost.text = "$" + BoostValue.Value;
		}
		if (BoostTime.Value >= 20)
		{
			BoostBuyButton.SetActive(false);
		}
	}
}
