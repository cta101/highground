curl -XPUT "http://192.168.39.179:32258/kube-2020.05.25/_settings" -H 'Content-Type: application/json' -d'
{
    "index" : {
        "highlight.max_analyzed_offset" : 999999999
    }
}
'
