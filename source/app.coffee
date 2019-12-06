import Pages from './pages'
import Layout from './Layout'
import React, {useEffect, useState, useRef } from 'react'
import axios from 'axios'
import Cookies from 'js-cookie'
import ReactDOM from 'react-dom'
import 'antd/dist/antd.css'
import { createBrowserHistory } from 'history'
import CFX from './cfx'
import {
  Router
  Switch
  Route
  Link
} from "react-router"

history = createBrowserHistory()
{ 
  LoginPage
  UsersPage
  UserDetailPage
  WorkingFlowPage 
  FlowManagementPage
  ReviewPage
  PropertiePage
  PropertieDetailPage
  InfoPage
} = Pages

C = CFX {
  InfoPage
  UserDetailPage
  LoginPage
  Layout
  Router
  Switch
  Route
  UsersPage
  WorkingFlowPage
  PropertiePage
  PropertieDetailPage
  FlowManagementPage
  ReviewPage
  PropertieDetailPage
  "div"
}

renderLayout = () => 
  useEffect () =>
    token = Cookies.get 'token'
    if token
      console.log 11
      # location.href = location.href.replace history.location.pathname, '/usermanagement'
    else
      console.log 22
      location.href = location.href.replace history.location.pathname, '/login'
  , []
  C.Layout {
    history
    content: 
      C.Router {
        history
      }
      ,
        C.div {
        }
        ,
          C.Switch {}
          ,
            C.Route
              exact: true
              path: '/usermanagement'
            ,
              C.UsersPage {
                history
              }
            C.Route
              exact: true
              path: '/userdetail/:id'
            ,
              C.UserDetailPage {
                history
              }
            C.Route 
              path: '/review'
            ,
              C.ReviewPage {
                history
              }
            C.Route
              path: '/propertie'
            ,
              C.PropertiePage {
                history
              }
            C.Route
              exact: true
              path: '/propertiedetail/:id'
            ,
              C.PropertieDetailPage {
                history
              }

              
            C.Route 
              path: '/workingflow'
            ,
              C.WorkingFlowPage {
                history
              }
            C.Route 
              path: '/flowmanagement'
            ,
              C.FlowManagementPage {
                history
              }
  }

export default App = () =>
  
  if history.location.pathname is '/login'
  then C.LoginPage {
    history
  }
  else renderLayout()
    
        
  


ReactDOM.render <App />, document.getElementById "app"