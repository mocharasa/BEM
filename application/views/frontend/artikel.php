			<!-- page content -->
            <div class="page-content">
				
				<div class="page-content-wrap bg-texture-1 bg-dark light-elements">
                    <div class="divider"><div class="box"><span class="fa fa-angle-down"></span></div></div>      
						&nbsp;&nbsp;&nbsp;<br/>&nbsp;&nbsp;&nbsp;<br/>
						&nbsp;&nbsp;&nbsp;<br/>&nbsp;&nbsp;&nbsp;<br/>
                </div>
				
				<!-- page content wrapper -->
                <div class="page-content-wrap bg-texture-2">                    
                    <!-- page content holder -->
                    <div class="page-content-holder padding-v-30">
                        
                        <div class="block-heading this-animate" data-animate="fadeInLeft">
                            <h2>Blog Terbaru BEM STT Wastukancana Purwakarta</h2>                            
                        </div>  
                        
                        <div class="row">
						<div class="col-md-9">                        
                            <div class="panel panel-default">
                                
								<div class="panel-body">
								<?php
								  if( ! empty($model['artikel'])){
									foreach($model['artikel'] as $query):										  
									$id = $query->id_artikel;
								?>
								<div class="row">									
									<div class="col-md-3">
										<?php 												
											if(empty($query->gambar_artikel)){														
												echo '<img width="180px" height="160px" src="'.base_url().'upload/default.jpg" />';
											} else {
												echo '<img width="180px" height="160px" src="'.base_url().'upload/'.$query->gambar_artikel.'" />';
											}
										?>
										<br/><br/>
										<div style="color:grey;font-size:10px"><i><?php echo $query->category; ?></i></div>
										<hr/>
									</div>
									<div class="col-md-9">
										<h2><?php echo $query->judul; ?></h2>										
										<p><?php echo word_limiter($query->konten,15); ?></p>
										<hr/><a href="<?php echo base_url()?>index.php/home/artikel_lihat/<?php echo $query->id_artikel;?>" data-toggle="tooltip" title="Lihat Artikel"><button class="btn btn-success">Read more</button></a>
									</div>									
                                </div>
								<?php 
									endforeach;
									} 
								?>
								</div>
								
							</div>
						</div>                    
						
						</div>
						
						<div class="row">                        
                            <div class="col-md-9">                                                                                              
								<?php echo $model['pagination']; ?>								
                            </div>
                            							
							<div class="col-md-3">
                                                                
                                
                                
                            </div>
                        </div>
                        
                    </div>
                    <!-- ./page content holder -->
                </div>
                <!-- ./page content wrapper -->
			</div>
			<!-- /page content -->