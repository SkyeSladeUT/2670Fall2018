using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ColorStore : MonoBehaviour
{

	public GameObject BuyButton;
	public GameObject EquipButton;
	public GameObject Fish;
	public ColorData ActiveColor;
	public Colors colors;
	public Colors Available;
	public Colors Purchased;
	private Renderer renderer;
	private int CurrentIndex;

	private void Start()
	{
		renderer = Fish.GetComponent<Renderer>();
		renderer.material.color = colors.ColorList[0].Value;
		CurrentIndex = 0;
		BuyButton.SetActive(false);
		EquipButton.SetActive(true);
		if (colors.ColorList[0].Value != ActiveColor.Value)
		{
			EquipButton.SetActive(true);
		}
	}

	public void GoNext()
	{
		CurrentIndex++;
		if (CurrentIndex > colors.ColorList.Count-1)
		{
			CurrentIndex = 0;
		}
		renderer.material.color = colors.ColorList[CurrentIndex].Value;
		bool isBought = false;
		foreach (var color in Purchased.ColorList)
		{
			if (color == colors.ColorList[CurrentIndex])
			{
				isBought = true;
			}
		}
		BuyButton.SetActive(!isBought);
		EquipButton.SetActive(isBought);
		if (colors.ColorList[CurrentIndex].Value == ActiveColor.Value)
		{
			EquipButton.SetActive(false);
		}
	}

	public void BuyObject()
	{
		Available.ColorList.Remove(colors.ColorList[CurrentIndex]);
		Purchased.ColorList.Add(colors.ColorList[CurrentIndex]);
		BuyButton.SetActive(false);
		EquipButton.SetActive(true);
	}

	public void Equip()
	{
		ActiveColor.Value = colors.ColorList[CurrentIndex].Value;
	}
}
