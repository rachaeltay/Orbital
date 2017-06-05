import {StyleSheet} from 'react-native';

const Style=StyleSheet.create({
  loginPage:{
    flex:1,
    alignItems:'stretch',
    justifyContent:'center'
  },
  loginBox:{
    flex:10,
    backgroundColor:'#000000',
    alignItems:'center',
    justifyContent:'center'
  },
  banner:{
    flex:1,
    backgroundColor:'#2E84BD',
    justifyContent:'center'
  },
  bannerFont:{
    fontFamily:'Roboto',
    fontSize:28,
    color:'#000000',
    textAlign:'center',
  },
  usernameBox:{
    height:40,
    width:200,
    backgroundColor:'#FFFFFF',
    marginBottom:5
  },
  passwordBox:{
    height:40,
    width:200,
    backgroundColor:'#FFFFFF',
    marginBottom:5
  },
  button:{
    height:40,
    width:100,
    backgroundColor:'#FFFFFF',
    justifyContent:'center',
    alignItems:'center'
  },
  buttonLayout:{
    flexDirection:'row'
  },
  font:{
    fontFamily:'monospace'
  }
})

export default Style;
