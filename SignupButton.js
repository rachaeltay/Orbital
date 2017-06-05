import React,{Component} from 'react';
import {TouchableHighlight,Text} from 'react-native';
import Style from './LoginPageStyle';

export default class SignupButton extends Component {
  render() {
    return (
      <TouchableHighlight
        style={Style.button}
        underlayColour='#B8C8D6'
        onPress={this.props.onPress}
      >
          <Text style={Style.font}>signup</Text>
      </TouchableHighlight>
    )
  }
}
