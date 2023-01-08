pipeline{
agent{
label 'Node_1'
}
stages{
stage ('first phase'){
steps{
sh "echo phase is successful"
}
}
stage ('second phase'){
steps{
sh "echo uptime"
}
}
}
}
