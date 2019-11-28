import React from 'react'
import ReactDom from 'react-dom'
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

export default =>
  click = (href) => () =>
    location.href = location.href.replace('login','')
  C.div {}
  ,
    C.Form {
      style.aboutTitle...
    }
    ,
      C.Item {}
      ,
        C.Input {
          style:
            height: '60px'
          prefix: 
            C.Icon {
              type: 'user'
              style: 
                color: 'rgba(0,0,0,.25)'
              type: 'user'
              placeholder: 'Username'
            }
        }
      C.Item {}
      ,
        C.Input {
          style:
            height: '60px'
          prefix: 
            C.Icon {
              type: 'lock'
              style: 
                color: 'rgba(0,0,0,.25)'
              type: 'password'
              placeholder: 'Password'
            }
        }
      C.Item {}
      ,
        C.Button {
          style:
            width: '100%'
          onClick : click('/home')
          type: 'primary'
          htmlType: 'submit'
        }
        , 'Log In'
