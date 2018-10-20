using System.Collections;
using System.Collections.Generic;
using System.Net.Mime;
using UnityEngine;
using UnityEngine.UI;

public class ColorStore : MonoBehaviour
{

	public GameObject BuyButton;
	public GameObject EquipButton;
	public GameObject Fish;
	public ColorData ActiveColor;
	public Colors colors;
	public Colors Available;
	public Colors Purchased;
	public Text AvailableCash;
	public Text Cost;
	public Player player;
	private Renderer renderer;
	private int CurrentIndex;

	private void Start()
	{
		renderer = Fish.GetComponent<Renderer>();
		renderer.material.color = colors.ColorList[0].Value;
		CurrentIndex = 0;
		BuyButton.SetActive(false);
		EquipButton.SetActive(true);
		Cost.text = "";
		AvailableCash.text = "$" + player.Coins;
		if (colors.ColorList[0].Value == ActiveColor.Value)
		{
			EquipButton.SetActive(false);
		}
	}

	public void GoNext()
	{
		CurrentIndex++;
		if (CurrentIndex > colors.ColorList.Count-1)
		{
			CurrentIndex = 0;
		}

		Cost.text = "$" + colors.ColorList[CurrentIndex].Cost;
		renderer.material.color = colors.ColorList[CurrentIndex].Value;
		BuyButton.SetActive(!colors.ColorList[CurrentIndex].isBought);
		EquipButton.SetActive(colors.ColorList[CurrentIndex].isBought);
		if (colors.ColorList[CurrentIndex].isBought)
		{
			Cost.text = "";
		}
		if (colors.ColorList[CurrentIndex].Value == ActiveColor.Value)
		{
			EquipButton.SetActive(false);
		}
	}

	public void BuyObject()
	{
		var color = colors.ColorList[CurrentIndex];
		Bought(color);
	}

	private void Bought(ColorData color)
	{
		if (color.Cost < player.Coins)
		{
			Purchased.ColorList.Add(color);
			Available.ColorList.Remove(colors.ColorList[CurrentIndex]);
			BuyButton.SetActive(false);
			EquipButton.SetActive(true);
			colors.ColorList[CurrentIndex].isBought = true;
			player.Coins -= color.Cost;
			Cost.text = "";
			AvailableCash.text = "$" + player.Coins;
		}
	}

	public void Equip()
	{
		ActiveColor.Value = colors.ColorList[CurrentIndex].Value;
		EquipButton.SetActive(false);
	}
}
