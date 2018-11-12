using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class UpdateText : MonoBehaviour
{

	public InData Number;
	public ActionObject Action;
	private Text label;

	
	private void Start()
	{
		label = GetComponent<Text>();
		Action.Raise += RaiseHandler;
	}

	private void RaiseHandler()
	{
		Number.Value++;
		label.text = Number.Value.ToString();
	}
}
