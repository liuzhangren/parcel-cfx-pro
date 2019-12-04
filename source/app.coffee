import Pages from './pages'
import Layout from './Layout'
import React from 'react'
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
{ LoginPage, UsersPage, UserDetailPage, WorkingFlowPage } = Pages

C = CFX {
  UserDetailPage
  LoginPage
  Layout
  Router
  Switch
  Route
  UsersPage
  WorkingFlowPage
  "div"
}

export default App = () =>
  if history.location.pathname is '/login'
  then C.LoginPage {}
  else
    C.Layout {
      history
      content: 
        C.Router {
          history
        }
        ,
          C.div {}
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
                path: '/userdetail'
              ,
                C.UserDetailPage {}
                
              C.Route 
                path: '/workingflow'
              ,
                C.WorkingFlowPage {
                  history
                }
    }
      
  


ReactDOM.render <App />, document.getElementById "app"