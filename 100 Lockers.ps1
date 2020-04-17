#initialize the array
$locker=@()

#create the 100 lockers (1 is open, 0 is closed). All are 
for($i=0; $i -le 99; $i++) {
    $locker+=1
}

#get count of lockers
write-host "Number of Lockers: "$locker.count



#start with student 2, up to 100 and modify their lockers only
for($i=2; $i -le 100; $i++) {
    write-host "========================== Student $i =========================="
    for($n=($i-1); $n -le 99; $n+=$i) {
        
        $action=@()
        $action+=$n
        Write-Host "Modify Locker number: " $action

        foreach($y in $action) {
            write-host "From: " $locker[$y]
            
            #if closed then open
            if($locker[$y] -eq 0) {
                $locker.item($y)=1 
            }
        
            #if it wasn't closed, then it's opened... close it
            else { $locker.item($y)=0 }
            write-host "To:   " $locker[$y]
        }
        
       
    }
    
}

$count=1
$opened=0
foreach ($i in $locker) { 
        write-host "Locker Number $count : $i" 
        $count++
        $opened+=$i
    }

write-host "Opened: $opened"






