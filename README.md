# Battery Charge And Decharge
Battery Charge And Decharge Model



![1](https://user-images.githubusercontent.com/82896678/222573848-c0a64041-fe40-4d34-a7a8-8077ee9480ab.png)


Battery Controller for Charging and Discharging of Battery Model:
The Battery Controller Model is designed to control the charging and discharging of a battery in an efficient and safe manner. It consists of a Coulomb Counting based State-of-Charge (SoC) measurement system, which accurately measures the battery's level of charge. The Battery Controller Model ensures that the battery is charged to its full capacity without overcharging, and discharged without damaging the battery.

Coulomb Counting Model for SoC measurement:
The Coulomb Counting Model is a simple and effective method for measuring the battery's level of charge. It calculates the SoC by integrating the current flowing in and out of the battery over time. The Coulomb Counting Model is based on the principle that the total charge that flows in and out of the battery is equal to the change in the battery's state-of-charge. Therefore, by measuring the current flowing in and out of the battery, the Coulomb Counting Model accurately estimates the battery's level of charge.

The Battery Controller Model with Coulomb Counting based SoC measurement is a reliable and efficient system for charging and discharging batteries. It provides accurate measurement of the battery's SoC, ensuring that the battery is charged and discharged safely and efficiently. With this model, you can control the charging and discharging of your battery with confidence, knowing that it is being done in the most optimal way possible.





The following images depict the Coulomb Counting Model and the structure inspired by my formula [picture 1, picture2]

picture 1
![1](https://user-images.githubusercontent.com/82896678/222575658-6c15ca59-00fe-46d3-9457-51dcd2af4729.png)

picture2
![Untitled](https://user-images.githubusercontent.com/82896678/222574851-02dbee0a-c357-43ae-8ea5-30183907cd09.png)



When the constant value of 1 is inputted in the following image [picture 3], the battery is charged. Similarly, when the constant value of 0 is inputted, the battery is discharged by the way Our battery is designed to be charged up to a maximum of 4 volts In addition [picture 4], a non-linear current has been used to allow for both positive and negative current values during a driving cycle, and a 1kHz current sensor has been utilized for current sensing. [picture 5]


[PICTURE 4]
![1](https://user-images.githubusercontent.com/82896678/222576618-86b44688-84ab-4a78-abb9-3278be16a113.png)

[PICTURE 5]
![1](https://user-images.githubusercontent.com/82896678/222576915-f6ca2b79-f75b-4a64-9f36-85776b2db6ee.png)

[PICTURE 6]
![1](https://user-images.githubusercontent.com/82896678/222578067-b292e73e-e707-4917-89e3-d4a06de305ca.png)


The graph in the image shows the values during the charging process. The first value represents the SoC value calculated using Coulomb Counting, the second value represents the current, and the third graph represents the voltage. [picture 7]

[PICTURE 7]
![1](https://user-images.githubusercontent.com/82896678/222579340-d7139e84-13d6-48f2-bd04-2f84c274b682.png)


To measure the battery's percentage value, a linear function has been used by using a linear open circuit voltage map ranging from 3V to 4V (SoC from %0 to %100). The lookup table provides the percentage value of the battery, which is then displayed on the screen. [PICTURE 8]


[PICTURE 8]
![Untitled](https://user-images.githubusercontent.com/82896678/222582378-c0b7d213-371a-46c4-8880-8fe519ed9efd.png)





