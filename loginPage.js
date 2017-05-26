import React, {Component} from 'react';
import {AppRegistry,StyleSheet,Text,View,TextInput} from 'react-native';
import Style from './android/app/src/Style';

class LoginPage extends Component{
  constructor(props) {
    super(props);
    this.state={
      username:'',
      password:''
    }
  }

  render() {
    return (
      <View style={Style.loginPage}>

        <View style={Style.usernameBox}>
          <TextInput
            style={Style.font}
            placeholder="username"
            onChangeText={username => this.setState({username})}
          />
        </View>

        <View style={Style.passwordBox}>
          <TextInput
            style={Style.font}
            placeholder="password"
            onChangeText={password => this.setState({password})}
          />
        </View>

        <View style={Style.loginBox}>
          <Text style={Style.font}>login</Text>
        </View>

      </View>
    );
  }
}

AppRegistry.registerComponent('LoginPage', () => LoginPage);
