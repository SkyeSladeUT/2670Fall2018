using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ScriptableObjectSaver : MonoBehaviour {

    public Objects Accesories;
    public Objects Purchased;
    public Objects Available;
    public Runner player;
    public Accessory CurrentAccesory;

    private void Start()
    {
        DontDestroyOnLoad(gameObject);
    }
}
