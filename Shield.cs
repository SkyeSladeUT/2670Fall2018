using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Shield : MonoBehaviour {

    public GameObject ShieldOutline;
    public string ShieldTag;
    private int shieldLife;
    private bool IsShieldActive;

    private void Start()
    {
        IsShieldActive = false;
        ShieldOutline.SetActive(false);
    }

    private void OnTriggerEnter(Collider other)
    {
        if (other.CompareTag(ShieldTag))
        {
            IsShieldActive = true;
            StartCoroutine("ShieldTimer");
        }
    }

    IEnumerator ShieldTimer()
    {
        while (shieldLife > 0)
        {
            shieldLife--;
            yield return new WaitForSeconds(1);
            if (shieldLife <= 0)
            {
                IsShieldActive = false;
                ShieldOutline.SetActive(false);
            }
        }
    }
}
