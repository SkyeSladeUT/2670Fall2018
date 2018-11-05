using System.Collections;
using System.Collections.Generic;
using UnityEngine;
[CreateAssetMenu(fileName = "Purchase", menuName = "Store/Purchasable")]
public class PurchasableObject : ScriptableObject
{
    public int Value;
    public Object Item;
    public bool Perpetual;
    public bool Instantiatable;

    public void CreateItem()
    {
        if (Instantiatable && Item is GameObject)
        {
            Instantiate(Item);
        }
    }
}
