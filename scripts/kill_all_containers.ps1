Push-Location $PSScriptRoot\..

$title    = 'Killing all docker'
$question = ' /!\ WARNING /!\ This will kill and remove all local containers and images. 
Do you you want to proceed?'
$choices  = '&Yes', '&No'

$decision = $Host.UI.PromptForChoice($title, $question, $choices, 1)
if ($decision -eq 0) {
    Write-Host "Docker kill all running images"

    docker kill $(docker ps -q)

    Write-Host "Docker remove all containers"

    docker rm $(docker ps -a -q)

    Write-Host "Docker remove all images" 

    docker rmi $(docker images -q)

} else {
    Write-Host 'cancelled'
}

Pop-Location