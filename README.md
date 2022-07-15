# Simple Transition
## Dependencies
For using simpletransition in your app, add the below dependency in entry/package.json
```
"dependencies": {
    "@ohos/simple-transition": "file:../simpletransition"
  }
 ``` 	
## Usage Instructions
Import all components at once
```
import { SimpleTransition, Transition } from '@ohos/simple-transition'
```
## Screenshots
![simple-transition](https://user-images.githubusercontent.com/105175305/179128477-992b3279-2974-4733-9e8b-2afd0d634ccd.gif)
 ![circle-transition](https://user-images.githubusercontent.com/105175305/179128506-fa10bc7e-4ab4-4b1e-86ea-431e2a9bff35.gif)

## Common Properties Like Sizes, Color and Positions
## Methods
Transition model extends Model class and used to get access to all these methods.
| Name     | Return Type       | Description   
| ------------- | ------------- | --------    |
| `getPosition()`        | `Position`          | returns the default position of component |
| `setPosition(position: Position)`        | `Model`          | sets  the default position of component  |
| `getButtonPosition()`        | `Position`          | returns the  position of button |
| `setButtonPosition(position: Position)`        | `Model`          | sets  the  position of button  |
| `getContainerPosition()`        | `Position`          |  returns the default position of container  |
| ` setContainerPosition(position: Position)`        | `Model`          |  sets  the  position of container  |
| `getText()`        | `string`          |  returns text on the button we click   |
| `setText(text: string)`        | `Model`          |sets text on the button we click   |
| ` getButtonColor()`        | `ResourceColor`          |  returns color of the button we click   |
| `setButtonColor(color: ResourceColor)`        | `Model`          | sets color of the button we click   |
| `getContainerColor()`        | `ResourceColor`          |  returns background color of the container   |
| `setContainerColor(color: ResourceColor)`        | `Model`          |  sets background color of the container   |
| `  getComponentColor()`        | `ResourceColor`          |   returns background color of the component |
| `setComponentColor(color: ResourceColor): Model`        | `Model`          |   sets background color of the component  |
| `  getFinalPosition()`        | `Position`          |    returns final positon after click|
| `setFinalPosition(finalPosition: Position)`        | `Model`          |   sets final positon after click |
| ` getTransitionDuration()`        | `number`          | returns duration of motion from one end to other during onclick   |
| `setTransitionDuration(time: number)`        | `Model`          | sets duration of motion from one end to other during onclick    |
| `getContainerBorderWidth()`        | `number`          |  returns border width of the container  |
| `setContainerBorderWidth(width: number)`        | `Model`          |   sets border width of the container  |
| ` getComponentSize()`        | `SizeOptions`          |  returns Component size   |
| `setComponentSize(size: SizeOptions)`        | `Model`          |    sets Component size  |
| ` getContainerSize()`        | `SizeOptions`          |  returns  Container  Size   |
| `setContainerSize(size: SizeOptions)`        | `Model`          |  sets  Container  Size  |
| `getSpringStiffness()`        | `number`          |   returns stiffness of the spring |
| ` setSpringStiffness(stiffness: number)`        | `Model`          |    sets stiffness of the spring |
| `getSpringMass()`        | `number`          |  return mass of the spring  |
| ` setSpringMass(mass: number)`        | `Model`          |  sets mass of the spring   |
| ` getSpringVelocity()`        | `number`          |  returns velocity of the spring |
| `setSpringVelocity(velocity: number)`        | `Model`          |  sets  velocity of the spring  |
| `getSpringDamping()`        | `number`          |   returns  damping of the spring  |
| ` setSpringDamping(damping: number)`        | `Model`          |   sets  damping of the spring  |
| ` getIsCircular()`        | `boolean`          |  returns if the component is circular or not   |
| `setIsCircular(isCircular: boolean)`        | `Model`          |   sets if the component is circular or not  |
| `getConmponentBorderWidth()`        | `number`          |  returns border width of the component  |
| `setComponentBorderWidth(width: number)`        | `Model`          |   sets border width of the component  |

## Model
Transition Model
## Examples:
### Sample transition:
![simple-transition-1](https://user-images.githubusercontent.com/105175305/179132629-56103efc-b5d5-4dad-b571-920bb0fcccd8.gif)</br>
Code:
 ```
import { SimpleTransition, Transition } from '@ohos/simple-transition'

@Entry
@Component
struct sample {
  models: Transition.Model = new Transition.Model()
  aboutToAppear() {
  this.models.setComponentColor(Color.Red)
  }
  build() {
    Column() {
      SimpleTransition({
        model: this.models,
      })
    }
  }
}
 ```
### Sample Circle Transition:
![circle-transition-1](https://user-images.githubusercontent.com/105175305/179132662-fdff63c1-022b-4641-922d-b07599734ac4.gif)</br>
Code:
 ```
import { SimpleTransition, Transition } from '@ohos/simple-transition'

@Entry
@Component
struct sample {
  models: Transition.Model = new Transition.Model()
  aboutToAppear() {
  this.models.setIsCircular(true);
  this.models.setComponentColor(Color.Red)
  }
  build() {
    Column() {
      SimpleTransition({
        model: this.models,
      })
    }
  }
}
 ```
## Compatibility
Supports OpenHarmony API version 8 and above
## Code Contribution
If you find any problems during usage, you can submit an [Issue](https://github.com/Applib-OpenHarmony/SimpleTransition/issues) to us. Of course, we also welcome you to send us [PR](https://github.com/Applib-OpenHarmony/SimpleTransition/pulls).
## Open source License
This project is based on [Apache License 2.0](https://github.com/Dasari-Jay-Prakash12/Material_UI_Lists/blob/main/LICENSE), please enjoy and participate in open source freely.

