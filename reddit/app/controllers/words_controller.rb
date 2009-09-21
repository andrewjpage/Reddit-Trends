class WordsController < ApplicationController
  
  before_filter :freq_boxes,  :only => [:index,:create,:show] 
  
  def index
    @plot = Cache.first()
    @wordtag = Word.first(:conditions => ["wid = ?", @plot.wid_id])
  end

  # Search results page
  def create
      @wordtag = Word.first(:conditions => ["word = ?", params[:word][:word]])
      #@wordtag = Word.first(:conditions => ["wid = ?", params[:id]])
      @plot = Cache.first(:conditions => ["wid_id = ?", @wordtag.wid], :order => "updatetime DESC")      
  end
  
  def show
      @wordtag = Word.first(:conditions => ["word = ?", params[:id]])
    
      
        generateGraph(@wordtag.wid)
        @plot = Cache.first(:conditions => ["wid_id = ?", @wordtag.wid], :order => "updatetime DESC")
  end
    
  
  private 
    def freq_boxes
      @words = Word.all(:order => "freq DESC", :limit => 50)
      @wordsfreq = Word.all(:order => "weekfreq DESC", :limit => 50);
    end
    
  private 
    def generateGraph(tag_wid)
      endfid = Link.last( :order => "fid_id DESC").fid_id
  
      timemax = 10;
      pointsCache = "["

      for i in (1..timemax)
        fid =findFidTime(i*60*60*24)
        # Flot time works in milliseconds
        timetick = (Time.now.to_i - (i*60*60*24))*1000

        if fid > 0
          freq = Wordmatch.count(:id,:conditions => ["wid_id = ? AND fid > ? AND fid < ?", tag_wid, fid, endfid])
        else
          freq = 0
        end
        pointsCache += "[#{timetick},#{freq}]"
        endfid = fid
      end
      
      pointsCache += "]"
      Cache.new(:wid_id => tag_wid, :updatetime =>Time.now.to_i, :graph => pointsCache)      
    end
    
    

    
  private  
    def findFidTime(pasttime)
      unixPastTime =Time.now.to_i - pasttime
      @fidrow = Link.first(:conditions => ["created <= ? AND created >= ?" , unixPastTime + 10000,  unixPastTime - 10000],
                           :order => "fid_id DESC")

      if @fidrow == nil
        0
      else
        @fidrow.fid_id
      end  
    end


end
