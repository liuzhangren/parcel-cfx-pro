import ReactDom from 'react-dom'
import axios from 'axios'
import Cookies from 'js-cookie'
import React, {useState, useEffect} from 'react'
import config from '../../config'
import style from './style'
import CFX from '../../cfx'
import { Form, Icon, Input, Button, Checkbox } from 'antd'

Item = Form.Item
C = CFX {
  'div'
  Item
  Form
  Button
  Input
  Icon
}

Login = (props) =>
  { getFieldDecorator } = props.form
  click = () =>
    formData = props.form.getFieldsValue()
    axios.post("#{config.api_service}/login",formData)
    .then (res) =>
      if res.data.status is 300
      then return
      else
        Cookies.set('token',"#{res.data.token}")
        location.href = location.href.replace props.history.location.pathname, '/usermanagement'
  C.div {}
  ,
    C.Form {
      style.aboutTitle...
    }
    ,
      C.Item {}
      ,
        getFieldDecorator('account', {
           rules: [{ required: true, message: 'Please input your account!' }],
        })(
          C.Input {
            style:
              height: '60px'
            placeholder: '请输入帐号！'
            prefix: 
              C.Icon {
                type: 'user'
                style: 
                  color: 'rgba(0,0,0,.25)'
              }
            type: 'user'
            placeholder: 'Username'
          }
        )
      C.Item {}
      ,
        getFieldDecorator('pwd', {
           rules: [{ required: true, message: 'Please input your pwd!' }],
        })(
          C.Input {
            style:
              height: '60px'
            placeholder: '请输入帐号！'
            prefix: 
              C.Icon {
                type: 'lock'
                style: 
                  color: 'rgba(0,0,0,.25)'
              }
            type: 'password'
            placeholder: 'Password'            
          }
        )
      ,
      C.Item {}
      ,
        C.Button {
          style:
            width: '100%'
          onClick : click
          type: 'primary'
          htmlType: 'submit'
        }
        , 'Log In'


export default Form.create()(Login)