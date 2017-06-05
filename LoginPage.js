import React, {Component} from 'react';
import {AppRegistry,StyleSheet,Text,View,TextInput} from 'react-native';
import Style from './LoginPageStyle';
import LoginButton from './LoginButton';
import SignupButton from './SignupButton';

export default class LoginPage extends Component{
  constructor(props) {
    super(props);
    this.state={
      username:'',
      password:''
    };
    this.authenticate=this.authenticate.bind(this);
    this.signup=this.signup.bind(this);
  }

  authenticate() {

  }

  signup() {

  }

  render() {
    return (
      <View style={Style.loginPage}>
          <View style={Style.banner}>
            <Text
            style={Style.bannerFont}>
            AppHeader
            </Text>
          </View>

          <View style={Style.loginBox}>
          <View style={Style.usernameBox}>
            <TextInput
              style={{fontFamily:'monospace'}}
              placeholder="username"
              underlineColorAndroid='transparent'
              onChangeText={username => this.setState({username})}
            />
          </View>

          <View style={Style.passwordBox}>
            <TextInput
              style={{fontFamily:'monospace'}}
              placeholder="password"
              secureTextEntry={true}
              underlineColorAndroid='transparent'
              onChangeText={password => this.setState({password})}
            />
          </View>

          <View style={Style.buttonLayout}>
            <LoginButton
              onPress={this.authenticate}
            />
            <SignupButton
              onPress={this.signup}
            />
          </View>
        </View>
      </View>
    );
  }
}
