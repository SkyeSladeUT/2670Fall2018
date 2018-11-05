using System.Collections;
using System.Collections.Generic;
using UnityEngine;
[CreateAssetMenu(fileName = "Store", menuName = "Store/StoreFront")]
public class Store : ScriptableObject
{
    public PurchaseableObjects Available;
    public PurchaseableObjects Purchased;
    public InData Cash;
    public int TotalValue = 300;
    
    public void MakePurchase(PurchasableObject obj)
    {
        for(int i = 0; i < Available.ObjectList.Count; i++)
        {
            PurchasableObject availableObject = Available.ObjectList[i];
            if (availableObject== obj && availableObject.Value <= Cash.Value)
            {
                Purchased.ObjectList.Add(obj);
                Available.ObjectList.Remove(availableObject);
                Cash.Value -= availableObject.Value;
            }
        }
    }

    public void PurchaseAll()
    {
        if (Cash.Value >= TotalValue)
        {
            for (var i = 0; i < Available.ObjectList.Count; i++)
            {
                var item = Available.ObjectList[i];
                Purchased.ObjectList.Add(item);
                Available.ObjectList.Remove(item);
            }

            Cash.Value -= TotalValue;
        }
    }

}
