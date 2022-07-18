/*
 * Copyright (c) 2022 Application Library Engineering Group.
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

namespace Transition {
  const DEFAULT_POSITION: Position = { x: '0vp', y: '50vp' }
  const DEFAULT_TEXT: string = 'Toggle'
  const DEFAULT_BUTTON_COLOR: ResourceColor = Color.Blue
  const DEFAULT_BUTTON_POSITION: Position = { x: '0vp', y: '0vp' }
  const DEFAULT_CONTAINER_SIZE: SizeOptions = { width: '350vp', height: '65vp' }
  const DEFAULT_CONTAINER_COLOR: ResourceColor = Color.Gray
  const DEFAULT_CONTAINER_POSITION: Position = { x: '0vp', y: '50vp' }
  const DEFAULT_CONTAINER_BORDER_WIDTH: number = 3
  const DEFAULT_COMPONENT_SIZE: SizeOptions = { width: '65vp', height: '65vp' }
  const DEFAULT_COMPONENT_COLOR: ResourceColor = Color.Blue
  const DEFAULT_TRANSITION_DURATION: number = 1000
  const DEFAULT_COMPONENT_BORDER_WIDTH: number = 0
  const DEFAULT_SPRING_STIFFNESS: number = 0.4
  const DEFAULT_SPRING_MASS: number = 1
  const DEFAULT_SPRING_VELOCITY: number = 25
  const DEFAULT_SPRING_DAMPING: number = 8.5
  const DEFAULT_IS_CIRCULAR: boolean = false

  export class Model {
    protected position: Position = DEFAULT_POSITION
    protected text: string = DEFAULT_TEXT
    protected buttonColor: ResourceColor= DEFAULT_BUTTON_COLOR
    protected buttonPosition: Position= DEFAULT_BUTTON_POSITION
    protected containerSize: SizeOptions= DEFAULT_CONTAINER_SIZE
    protected containerColor: ResourceColor= DEFAULT_CONTAINER_COLOR
    protected containerPosition: Position= DEFAULT_CONTAINER_POSITION
    protected containerBorderWidth: number= DEFAULT_CONTAINER_BORDER_WIDTH
    protected componentSize: SizeOptions= DEFAULT_COMPONENT_SIZE
    protected componentColor: ResourceColor= DEFAULT_COMPONENT_COLOR
    protected transitionTime: number= DEFAULT_TRANSITION_DURATION
    protected isCircular: boolean = DEFAULT_IS_CIRCULAR
    protected componentBorderWidth: number= DEFAULT_COMPONENT_BORDER_WIDTH
    protected stiffness: number = DEFAULT_SPRING_STIFFNESS
    protected mass: number = DEFAULT_SPRING_MASS
    protected velocity: number = DEFAULT_SPRING_VELOCITY
    protected damping: number = DEFAULT_SPRING_DAMPING
    lenToNum(value: Length): number {
      return parseFloat(value.toString())
    }

    setPosition(position: Position): Model {
      if (this.lenToNum(position.x) < 0 || this.lenToNum(position.y) < 0) {
        throw new Error("Invalid size. Please provide a  valid input")
      }
      this.position = (position != null && position != undefined) ? position : DEFAULT_POSITION
      return this
    }

    getPosition(): Position {
      return this.position
    }

    setButtonPosition(position: Position): Model {
      if (this.lenToNum(position.x) < 0 || this.lenToNum(position.y) < 0) {
        throw new Error("Invalid size. Please provide a  valid input")
      }
      this.buttonPosition = (position != null && position != undefined) ? position : DEFAULT_BUTTON_POSITION
      return this
    }

    getButtonPosition(): Position {
      return this.buttonPosition
    }

    setContainerPosition(position: Position): Model {
      if (this.lenToNum(position.x) < 0 || this.lenToNum(position.y) < 0) {
        throw new Error("Invalid size. Please provide a  valid input")
      }
      this.containerPosition = (position != null && position != undefined) ? position : DEFAULT_CONTAINER_POSITION
      return this
    }

    getContainerPosition(): Position {
      return this.containerPosition
    }

    setText(text: string): Model {
      this.text = (text != null && text != undefined) ? text : DEFAULT_TEXT
      return this
    }

    getText(): string {
      return this.text
    }

    setButtonColor(color: ResourceColor): Model {
      this.buttonColor = (color != null && color != undefined) ? color : DEFAULT_BUTTON_COLOR
      return this
    }

    getButtonColor(): ResourceColor {
      return this.buttonColor
    }

    setContainerColor(color: ResourceColor): Model {
      this.containerColor = (color != null && color != undefined) ? color : DEFAULT_CONTAINER_COLOR
      return this
    }

    getContainerColor(): ResourceColor {
      return this.containerColor
    }

    setComponentColor(color: ResourceColor): Model {
      this.componentColor = (color != null && color != undefined) ? color : DEFAULT_COMPONENT_COLOR
      return this
    }

    getComponentColor(): ResourceColor {
      return this.componentColor
    }

    getFinalPosition(): Position{
      return {
        x: ((this.lenToNum(this.containerSize.width) - this.lenToNum(this.componentSize.width))),
        y: this.position.y
      }
    }

    setTransitionDuration(time: number): Model {
      if (time < 0) {
        throw new Error("Invalid size. Please provide a  valid input")
      }
      this.transitionTime = (time != null && time != undefined) ? time : DEFAULT_TRANSITION_DURATION
      return this
    }

    getTransitionDuration(): number{
      return this.transitionTime
    }

    setContainerBorderWidth(width: number): Model {
      if (width < 0) {
        throw new Error("Invalid size. Please provide a  valid input")
      }
      this.containerBorderWidth = (width != null && width != undefined) ? width : DEFAULT_CONTAINER_BORDER_WIDTH
      return this
    }

    getContainerBorderWidth(): number
    {
      return this.containerBorderWidth
    }

    setComponentBorderWidth(width: number): Model {
      if (width < 0) {
        throw new Error("Invalid size. Please provide a  valid input")
      }
      this.componentBorderWidth = (width != null && width != undefined) ? width : DEFAULT_COMPONENT_BORDER_WIDTH
      return this
    }

    getComponentBorderWidth(): number
    {
      return this.componentBorderWidth
    }

    setComponentSize(size: SizeOptions): Model {
      if (this.lenToNum(size.height) < 0 || this.lenToNum(size.width) < 0) {
        throw new Error("Invalid size. Please provide a  valid input")
      }
      this.componentSize = (size != null && size != undefined) ? size : DEFAULT_COMPONENT_SIZE
      return this
    }

    getComponentSize(): SizeOptions{
      return this.componentSize
    }

    setContainerSize(size: SizeOptions): Model {
      if (this.lenToNum(size.height) < 0 || this.lenToNum(size.width) < 0) {
        throw new Error("Invalid size. Please provide a  valid input")
      }
      this.containerSize = (size != null && size != undefined) ? size : DEFAULT_CONTAINER_SIZE
      return this
    }

    getContainerSize(): SizeOptions{
      return this.containerSize
    }

    setSpringStiffness(stiffness: number): Model {
      if (stiffness < 0) {
        throw new Error("Invalid size. Please provide a  valid input")
      }
      this.stiffness = (stiffness != null && stiffness != undefined) ? stiffness : DEFAULT_SPRING_STIFFNESS
      return this
    }

    getSpringStiffness(): number{
      return this.stiffness
    }

    setSpringMass(mass: number): Model {
      if (mass < 0) {
        throw new Error("Invalid size. Please provide a  valid input")
      }
      this.mass = (mass != null && mass != undefined) ? mass : DEFAULT_SPRING_MASS
      return this
    }

    getSpringMass(): number{
      return this.mass
    }

    setSpringVelocity(velocity: number): Model {
      if (velocity < 0) {
        throw new Error("Invalid size. Please provide a  valid input")
      }
      this.velocity = (velocity != null && velocity != undefined) ? velocity : DEFAULT_SPRING_VELOCITY
      return this
    }

    getSpringVelocity(): number{
      return this.velocity
    }

    setSpringDamping(damping: number): Model {
      if (damping < 0) {
        throw new Error("Invalid size. Please provide a  valid input")
      }
      this.damping = (damping != null && damping != undefined) ? damping : DEFAULT_SPRING_DAMPING
      return this
    }

    getSpringDamping(): number{
      return this.damping
    }

    getIsCircular(): boolean{
      return this.isCircular
    }

    setIsCircular(isCircular: boolean): Model{
      this.isCircular = (isCircular != null && isCircular != undefined) ? isCircular : DEFAULT_IS_CIRCULAR
      return this
    }
  }
}

export { Transition }