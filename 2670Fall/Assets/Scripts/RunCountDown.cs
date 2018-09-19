using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class RunCountDown : MonoBehaviour
{
    private Text Label;
    IEnumerator Start()
    {
        Label = GetComponent<Text>();
        Label.text = "3";
        yield return new WaitForSeconds(1);
    }
}
