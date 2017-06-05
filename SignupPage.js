import React, {Component} from 'react';
import {AppRegistry,StyleSheet,Text,View,TextInput} from 'react-native';
import Realm from 'realm';
import Style from './SignupPageStyle';

export default class SignupPage extends Component {
  constructor(props) {
    super(props);
    this.state={
      username:'',
      password:''
    };
    this.createUser=this.createUser.bind(this);
  }

  createUser() {

  }

  render() {
    return (
     <form onSubmit={this.handleSubmit}>
       <Text>asdg</Text>
       <input type="submit" value="Submit" />
     </form>
   );
 }
}
