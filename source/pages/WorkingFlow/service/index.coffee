import dayjs from 'dayjs'
import axios from 'axios'
import config from '../../../config'

init = () =>
  workingFlowRes = await axios.get "#{config.api_service}/workingflow"
  console.log '请求之后', "#{config.api_service}/workingflow"
  responseData = workingFlowRes.data.data
  responseData.reduce (r, c) =>
    {
      pushOrderPerson
      acceptOrderPerson
      status
      updateAt
      createdAt
    } = c
    pushOrderPersonRes = await axios.get "#{config.api_service}/user/#{pushOrderPerson}"
    acceptOrderPersonRes = await axios.get "#{config.api_service}/user/#{acceptOrderPerson}"
    temp = {
      pushOrderNickName: pushOrderPersonRes.data.nickName
      acceptOrderNickName: acceptOrderPersonRes.data.nickName
      status:
        switch status
          when '00'
          then '待接单'
          when '01'
          then '已接单待约访'
          when '11'
          then '拒绝接单'
          when '02'
          then '已约访待到访'
          when '12'
          then '已约访未到访'
          when '03'
          then '已到访待认购'
          when '13'
          then '已到访未认购'
          when '04'
          then '已认购待返佣'
          when '14'
          then '已认购未返佣'
          when '05'
          then '已返佣'
      updateAt: (dayjs updateAt).format 'YYYY-MM-DD HH:mm:ss'
      createdAt: (dayjs createdAt).format 'YYYY-MM-DD HH:mm:ss'
    }
    [
      r...
      {
        c...
        temp...
      }
    ]
  , []


export default {
  init
}