using System.Collections;
using System.Collections.Generic;
using UnityEditor;
using UnityEngine;

public class Drag : MonoBehaviour
{
    private SpriteRenderer Sprite;
    private bool isPressed = false;
    void Start()
    {
        Sprite = gameObject.GetComponent<SpriteRenderer>();
    }
    void Update()
    {
        Pressed();
    }
    void OnMouseDown()
    {
        isPressed = true; 
        print("clicked");
    }
    void OnMouseUp()
    {
        isPressed = false;
        print("up");
    }
    void Pressed()
    {
        if (isPressed)
        {
            Vector2 MousePosition = new Vector2(Input.mousePosition.x, Input.mousePosition.y);
            Vector2 objPosition = Camera.main.ScreenToWorldPoint(MousePosition);
            transform.position = objPosition;
        }
    }
}
