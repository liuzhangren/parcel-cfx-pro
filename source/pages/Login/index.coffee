import React from 'react'
import ReactDom from 'react-dom'
import style from './style'
import { Form, Icon, Input, Button, Checkbox } from 'antd'


export default (props) =>
  click = (href) => () =>
    # location.href = location.replace('login','/home')
    location.href = location.href.replace('login','')
  <div>
    <Form style={{ width:'380px',padding:'30px 20px 10px',border:'1px solid #1890ff',position:'absolute',top:'50%',left:'50%',transform:'translate(-50%,-50%)',borderRadius:'5px',boxShadow:'3px 6px 35px 2px rgba(0,0,0,0.4)'}}>
      <Form.Item>
        <Input
          style={{ height:'60px' }}
          prefix={<Icon type="user" style={{ color: 'rgba(0,0,0,.25)' }} />}
          placeholder="Username"
        />
      </Form.Item>
      <Form.Item>
        <Input
          style={{ height:'60px' }}
          prefix={<Icon type="lock" style={{ color: 'rgba(0,0,0,.25)' }} />}
          type="password"
          placeholder="Password"
        />
      </Form.Item>
      <Form.Item>
        <Button onClick={click('/home')} type="primary" htmlType="submit" className="login-form-button" style={{ width:'100%', height:'60px' }}>
          Log in
        </Button>
      </Form.Item>
    </Form>
  </div>