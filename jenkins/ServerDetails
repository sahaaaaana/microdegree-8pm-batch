pipeline{
	agent any
	stages{
	stage('Build system details'){
	steps{
	sh '''
	echo '"SYSTEM DETAILS"'
	uname -a
	'''
	}
	}
	stage('Build Memory details'){
	steps{
	sh '''
	echo '"MEMORY details"'
	free
	'''
	}
	}
	stage('Build Disk Details'){
	steps{
	sh '''
	echo '"Disk Details"'
	df -h | tail -5
	'''
	}
	}
	stage('Build CPU Details'){
	steps{
	sh '''
	echo '"Cpu Details"'
	lscpu
	'''
	}
	}
	stage('Build Process Command'){
	steps{
	sh '''
	echo '"Process Command"'
	ps
	'''
	}
	}
	}
}
