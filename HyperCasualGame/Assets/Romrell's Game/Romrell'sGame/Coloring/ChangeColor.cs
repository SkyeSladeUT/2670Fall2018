using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ChangeColor : MonoBehaviour
{
    public ColorData SpriteColor;
    private SpriteRenderer sRend;

    private void Start()
    {
        sRend = GetComponent<SpriteRenderer>();
        sRend.color = SpriteColor.Value;
    }

    private void OnTriggerEnter(Collider obj)
    {
        obj.GetComponent<SpriteRenderer>().color = SpriteColor.Value;
    }
}
