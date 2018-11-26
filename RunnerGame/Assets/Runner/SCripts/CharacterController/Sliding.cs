using System.Collections;
using System.Collections.Generic;
using UnityEditor.Animations;
using UnityEngine;

public class Sliding : MonoBehaviour
{

	private Vector3 position;
	private Vector3 rotation;
	private Animator anim;
	public Animator PenguinAnim;

	private void Start()
	{
		anim = GetComponent<Animator>();
	}

	private void Update()
	{
		if (Input.GetKeyDown(KeyCode.DownArrow))
		{
			anim.SetTrigger("Slide");
			PenguinAnim.SetTrigger("Slide");
		}
		if(Input.GetKeyDown(KeyCode.UpArrow))
		{
			PenguinAnim.SetTrigger("Jump");
		}
	}

}
