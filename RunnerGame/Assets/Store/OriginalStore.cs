using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class OriginalStore : MonoBehaviour
{

	/*public FloatData ShieldTime, ShieldValue, DoubleCoinValue;
	public Text CurrentShieldTime;
	public Text ShieldCost, DoubleCoinCost;
	public GameObject ShieldBuyButton, DoubleCoinsBuy;
	public Player player;
	public Text playerCash;

	private void Start()
	{
		if(player.DoubleCoins)
			DoubleCoinsBuy.SetActive(false);
		else
			DoubleCoinsBuy.SetActive(true);
		DoubleCoinCost.text = "$" + DoubleCoinValue.value;
		CurrentShieldTime.text = "Current Time: " + ShieldTime.Value;
		playerCash.text = "$" + player.Coins;
		ShieldCost.text = "$" + ShieldValue.Value;
	}

	public void IncreaseTime()
	{
		if (player.Coins >= ShieldValue.Value)
		{
			ShieldTime.value++;
			CurrentShieldTime.text = "Current Time: " + ShieldTime.Value;
			player.Coins -= (int) ShieldValue.Value;
			ShieldValue.value += 50;
			playerCash.text = "$" + player.Coins;
			ShieldCost.text = "$" + ShieldValue.Value;
		}
		if (ShieldTime.Value >= 20)
		{
			ShieldBuyButton.SetActive(false);
		}
	}

	public void BuyDoubleCoins()
	{
		if (player.Coins >= DoubleCoinValue.Value)
		{
			player.DoubleCoins = true;
			DoubleCoinsBuy.SetActive(false);
			player.Coins -= (int)DoubleCoinValue.Value;
		}
	}*/
}
