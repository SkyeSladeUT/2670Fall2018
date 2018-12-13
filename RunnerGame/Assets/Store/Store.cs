using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class Store : MonoBehaviour
{

	public GameObject BuyButton;
	public GameObject EquipButton;
	public List<GameObject> Hats;
	public Accessory ActiveColor;
	public Objects colors;
	public Objects Available;
	public Objects Purchased;
	public Text AvailableCash;
	public Text Cost;
	public Runner player;
	private int CurrentIndex;

	private void Start()
	{
		CurrentIndex = 0;
		BuyButton.SetActive(false);
		EquipButton.SetActive(true);
		Cost.text = "";
		AvailableCash.text = "$" + player.Coins;
		if (colors.ObjectList[0].Object == ActiveColor.Object)
		{
			EquipButton.SetActive(false);
		}
	}

	public void GoNext()
	{
		Hats[CurrentIndex].SetActive(false);
		CurrentIndex++;
		if (CurrentIndex == colors.ObjectList.Count)
		{
			CurrentIndex = 0;
		}
		Hats[CurrentIndex].SetActive(true);
		Cost.text = "$" + colors.ObjectList[CurrentIndex].Cost;
		BuyButton.SetActive(!colors.ObjectList[CurrentIndex].isBought);
		EquipButton.SetActive(colors.ObjectList[CurrentIndex].isBought);
		if (colors.ObjectList[CurrentIndex].isBought)
		{
			Cost.text = "";
		}
		if (colors.ObjectList[CurrentIndex].Object == ActiveColor.Object)
		{
			EquipButton.SetActive(false);
		}
	}

	public void BuyObject()
	{
		var color = colors.ObjectList[CurrentIndex];
		Bought(color);
	}

	private void Bought(Accessory color)
	{
		if (color.Cost < player.Coins)
		{
			Purchased.ObjectList.Add(color);
			Available.ObjectList.Remove(colors.ObjectList[CurrentIndex]);
			BuyButton.SetActive(false);
			EquipButton.SetActive(true);
			colors.ObjectList[CurrentIndex].isBought = true;
			player.Coins -= color.Cost;
			Cost.text = "";
			AvailableCash.text = "$" + player.Coins;
		}
	}

	public void Equip()
	{
		ActiveColor.Object = colors.ObjectList[CurrentIndex].Object;
		EquipButton.SetActive(false);
	}
}
