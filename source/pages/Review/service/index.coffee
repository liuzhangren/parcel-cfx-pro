import dayjs from 'dayjs'
import axios from 'axios'
import config from '../../../config'

init = () =>
  reviewRes = await axios.get "#{config.api_service}/review"
  reviewData = reviewRes.data.data

  res = reviewData.reduce (r, c) =>
    userRes = await axios.get "#{config.api_service}/user/#{c.userId}"
    {
      id
      rest...
    } = userRes.data
    [
      r...
      {
        rest...
        c...
      }
    ]
  , []
  console.log '------------'
  console.log res
  res



export {
  init
}