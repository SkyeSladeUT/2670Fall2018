﻿using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PurchasedObjectGenerator : MonoBehaviour
{

	public PurchaseableObjects Purchased;

	private void Start()
	{
		for (var i = 0; i < Purchased.ObjectList.Count; i++)
		{
			var obj = Purchased.ObjectList[i];
			obj.CreateItem();
			if (!obj.Perpetual)
			{
				Purchased.ObjectList.Remove(obj);
			}
		}
	}
}