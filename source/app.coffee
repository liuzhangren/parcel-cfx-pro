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
{ LoginPage, UsersPage, UserDetailPage } = Pages

C = CFX {
  LoginPage
  Layout
  Router
  Switch
  Route
  UsersPage
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
              C.Route {
                path: '/user_management'
              }
              ,
                C.UsersPage {
                  history
                }
    }
      
  


ReactDOM.render <App />, document.getElementById "app"