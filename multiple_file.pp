file {'/root/file1.txt':
	ensure => 'file',
	content => 'This is file1r';
  
     '/root/file2.txt':
	ensure => 'file',
	content => 'This is file2',
   }
