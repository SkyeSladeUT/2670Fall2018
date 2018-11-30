using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class AccessorySetUp : MonoBehaviour
{

	public List<GameObject> Objects;
	public Accessory CurrentAccessory;
	public Objects Accesories;

	private void Start()
	{
		for (int i = 0; i < Accesories.ObjectList.Count; i++)
		{
			Objects[i].SetActive(false);
			if (Accesories.ObjectList[i].Object == CurrentAccessory.Object)
			{
				Objects[i].SetActive(true);
			}
		}
	}
}
