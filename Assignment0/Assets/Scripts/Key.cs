using UnityEngine;

public class Key : MonoBehaviour {
/*note to self
	make a Button or lever with animations
	Add on/off animations to script
	could be a possible asset to share (along with the button scriptable object)
*/

	public GameObject[] Enemy1;
	public GameObject[] Enemy2;
	public ButtonScript button;


	private void Start () {
		button.CurrentButtonActive = false;
		foreach (var door in Enemy2) {
			door.SetActive (false);
		}

	}
	private void OnTriggerEnter (Collider other) {
		if (other.CompareTag("Player"))
		{
			foreach (var door in Enemy1)
			{
				door.SetActive(button.CurrentButtonActive);
			}

			foreach (var door in Enemy2)
			{
				door.SetActive(!button.CurrentButtonActive);
			}

			button.CurrentButtonActive = !button.CurrentButtonActive;
		}
	}
}