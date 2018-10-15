using System.Collections;
using System.Collections.Generic;
using UnityEngine;
[CreateAssetMenu]
public class ChangeColor : ScriptableObject
{
    public ColorData SpriteColor;

    public void Call(SpriteRenderer spriteRenderer)
    {
        spriteRenderer.color = SpriteColor.Value;
    }

    public void Call(Material material)
    {
        material.color = SpriteColor.Value;
    }
}
