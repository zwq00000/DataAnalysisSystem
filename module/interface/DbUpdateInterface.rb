#!/usr/bin/env ruby -w
# encoding: GBK
#���ݿ�ṹ���½���
class DbUpdateInterface < BaseInterface
  #��ʼ��
  def initialize
    super
    @host,@dbname,@area_name = '','',''
  end
  #��ʼ����
  def start
    super
    @area_hash = {}
    @statu = 1
    @username = 'sa'
    @password = '123456'
  end
  #����ǰ����
  def before_input
    super
    show_menu
  end
  #��������
  def after_input
    menu_determine
    super
  end
  # ��������
  def terminate
    puts "�����˳�..."
    super
  end
  #�˵��ж�
  def menu_determine
    case @statu
    when 1#ѡ������
      area_name = @area_hash[@input]
      if area_name != nil
        @area_name = area_name
        @statu = 2
      elsif @input == 'q'
        @statu = "quit"
      else
        puts "�����������"
      end
    when 2#�������ݿ��ַ
      if @input == 'q'
        @statu = 1
      else
        @host = @input
        @statu = 3
      end
    when 3#�����û���������
      if @input == 'q'
        @statu = 2
      elsif @input == 'u'
        puts '�������û�����'
        get_input
        @username = @input
      elsif @input == 'p'
        puts '���������룺'
        get_input
        @password = @input
      elsif @input == 'c'
        @statu = 4
      else
        puts "��������"
      end
    when 4#�������ݿ��ַ
      if @input == 'q'
        @statu = 3
      else
        @dbname = @input
        @statu = 5
      end
    when 5#��������
      if @input == 'q'
        @statu = 4
      elsif @input == 'd'
        puts '�Ƚ���...'
        AreaManager.open(@area_name) do |work_area|
          DBEntity.open(@dbname) do |db|
            work_area.show_db_diff_cmd(db)
          end
        end
      elsif @input == 'u'
        puts '���ڸ���...'
        AreaManager.open(@area_name) do |work_area|
          DBEntity.open(@dbname) do |db|
            work_area.update_db(db)
            puts '�������'
          end
        end
      else
        puts "��������"
      end
    end
  end
  #��ʾ�˵�
  def show_menu
    puts "----------------------------------------"
    case @statu
    when 1 then show_menu1
    when 2 then show_menu2
    when 3 then show_menu3
    when 4 then show_menu4
    when 5 then show_menu5
    end
    puts "----------------------------------------"
  end
  def show_menu1
    show_all_area
    puts "   ������Ϊ����Դ�Ĺ������Ķ�Ӧ����     "
    puts "   ����q�˳�                            "
  end
  def show_menu2
    puts "   �������������Դ�ĵ�ַ(����Ϊl)      "
    puts "   ����q�����ϼ�Ŀ¼                    "
  end
  def show_menu3
    puts "   ����u�����û���(Ĭ��sa)              "
    puts "   ����p��������(Ĭ��123456)            "
    puts "   ����c��������Դ                      "
    puts "   ����q�����ϼ�Ŀ¼                    "
  end
  def show_menu4
    show_db
    puts "   ������������ݿ������               "
    puts "   ����q�����ϼ�Ŀ¼                    "
  end
  def show_menu5
    puts "   ����d�鿴���ݿ��빤�����Ĳ���        "
    puts "   ����u���������ݿ��еı��ṹ          "
    puts "   ����q�����ϼ�Ŀ¼                    "
  end
  #��ʾ���еĹ�������
  def show_all_area
    num = 1
    puts "   ���й�������           "
    AreaManager.get_all_area_name.each do |name|
      puts "   #{name.ljust(16)}#{num.to_s} "
      @area_hash[num.to_s] = name
      num += 1
    end
  end
  #��ʾ����Դ�е����ݿ�
  def show_db
    DBEntity.set_connector(DBConnector.new(@host,username: @username,password: @password))
    puts "   ���ڲ�ѯ����Դ�е����ݿ�...     "
    DBEntity.open(){|db| db.get_db_name.each{|db_name| puts '   ' << db_name}}
  end
end