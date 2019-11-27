import React, { useState } from 'react'
import {
  Layout
  Menu
  Breadcrumb
  Icon
} from 'antd'
import style from './style'

{ Header, Footer, Sider, Content } = Layout
{ SubMenu } = Menu

export default (props) => 
  [collapsed, setCollapsed] = useState(false)
  # console.log 'hello--->>>', props
  onCollapse = (nowCollapsed) -> 
    setCollapsed(nowCollapsed)
  jumpTo = (href) => () => 
    props.history.push href
  <Layout style={{minHeight: '100vh'}}>
    <Sider 
      collapsible
      collapsed={collapsed} 
      onCollapse={onCollapse}
    >
      <div {style.logo...} />
      <Menu theme="dark" defaultSelectedKeys={['1']} mode="inline">
        <Menu.Item onClick={jumpTo('/')} key="1">
          <Icon type="pie-chart" />
          <span>Option 1</span>
        </Menu.Item>
        <Menu.Item onClick={jumpTo('/about')} key="2">
          <Icon type="desktop" />
          <span>Option 2</span>
        </Menu.Item>
        <SubMenu
          key="sub1"
          title={
            <span>
              <Icon type="user" />
              <span>User</span>
            </span>
          }
        >
          <Menu.Item onClick={jumpTo('/users/tom')} key="3">Tom</Menu.Item>
          <Menu.Item onClick={jumpTo('/users/bill')} key="4">Bill</Menu.Item>
          <Menu.Item onClick={jumpTo('/users/alex')} key="5">Alex</Menu.Item>
        </SubMenu>
        <SubMenu
          key="sub2"
          title={
            <span>
              <Icon type="team" />
              <span>Team</span>
            </span>
          }
        >
          <Menu.Item key="6">Team 1</Menu.Item>
          <Menu.Item key="8">Team 2</Menu.Item>
        </SubMenu>
        <Menu.Item key="9">
          <Icon type="file" />
          <span>File</span>
        </Menu.Item>
      </Menu>
    </Sider>
    <Layout>
      <Header style={{ background: '#fff', padding: 0 }} />
      <Content style={{ margin: '0 16px' }}>
        <Breadcrumb style={{ margin: '16px 0' }}>
          <Breadcrumb.Item>User</Breadcrumb.Item>
          <Breadcrumb.Item>Bill</Breadcrumb.Item>
        </Breadcrumb>
        <div style={{ padding: 24, background: '#fff', minHeight: 360 }}>
          {props.content}
        </div>
      </Content>
      <Footer style={{ textAlign: 'center' }}>EstateAgency ©2019 Created by COTFEA UED</Footer>
    </Layout>
  </Layout>
