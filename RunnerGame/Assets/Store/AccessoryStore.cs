using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class AccessoryStore : MonoBehaviour {

	public GameObject BuyButton;
	public GameObject EquipButton;
	public Objects Accesories;
	public List<GameObject> Objects;
	public Objects Purchased;
	public Objects Available;
	public Text AvailableCash;
	public Text Cost;
	public Runner player;
	public Accessory CurrentAccesory;
	private int CurrentIndex;
	//public StoreObject store;

	private void Start()
	{
		CurrentIndex = 0;
		BuyButton.SetActive(false);
		EquipButton.SetActive(true);
		Cost.text = "";
		AvailableCash.text = "$" + player.Coins;
		if (Accesories.ObjectList[0].Object == CurrentAccesory.Object)
		{
			EquipButton.SetActive(false);
		}

		foreach (var obj in Objects)
		{
			obj.SetActive(false);
		}
		Objects[0].SetActive(true);
	}

	public void GoNext()
	{
		Objects[CurrentIndex].SetActive(false);
		CurrentIndex++;
		if (CurrentIndex == Accesories.ObjectList.Count)
		{
			CurrentIndex = 0;
		}
		Cost.text = "$" + Accesories.ObjectList[CurrentIndex].Cost;
		Objects[CurrentIndex].SetActive(true);
		BuyButton.SetActive(!Accesories.ObjectList[CurrentIndex].isBought);
		EquipButton.SetActive(Accesories.ObjectList[CurrentIndex].isBought);
		if (Accesories.ObjectList[CurrentIndex].isBought)
		{
			Cost.text = "";
		}
		if (Accesories.ObjectList[CurrentIndex].Object == CurrentAccesory.Object)
		{
			EquipButton.SetActive(false);
		}
	}

	public void BuyObject()
	{
		Accessory accessory = Accesories.ObjectList[CurrentIndex];
		Bought(accessory);
	}

	private void Bought(Accessory accessory)
	{
		if (Accesories.ObjectList[CurrentIndex].Cost <= player.Coins)
		{
			Purchased.ObjectList.Add(Accesories.ObjectList[CurrentIndex]);
			Available.ObjectList.Remove(Accesories.ObjectList[CurrentIndex]);
			BuyButton.SetActive(false);
			EquipButton.SetActive(true);
			Accesories.ObjectList[CurrentIndex].isBought = true;
			player.Coins -= Accesories.ObjectList[CurrentIndex].Cost;
			Cost.text = "";
			AvailableCash.text = "$" + player.Coins;
		}
	}

	public void Equip()
	{
		CurrentAccesory.Object = Accesories.ObjectList[CurrentIndex].Object;
		//store.CurrentAccesory = store.Accesories.ObjectList[CurrentIndex];
		EquipButton.SetActive(false);
	}

}
