export default [
    title: '姓名',
    dataIndex: 'realName',
    key: 'name',
    align: 'center'
  ,
    title: '昵称',
    dataIndex: 'nickName',
    key: 'nickName',
    align: 'center'
  ,
    title: '年龄',
    dataIndex: 'age',
    key: 'age',
    ellipsis: true,
    align: 'center'
  ,
    title: '手机号',
    dataIndex: 'tel',
    key: 'tel',
    ellipsis: true,
    align: 'center'
  ,
    title: '所属楼盘',
    dataIndex: 'properties',
    key: 'properties',
    ellipsis: true,
    align: 'center'
  ,
    title: '申请时间'
    dataIndex: 'createdAt'
    key: 'createdAt'
    align: 'center'
  ,
    title: '操作',
    key: 'operation'
    # render: (value, row, index) =>
    #   C.a
    #     key: index
    #     onClick: jumpTo "/userdetail/#{row.id}"
    #   , '详情'
]