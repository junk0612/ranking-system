# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

if Game.count.zero?
  ActiveRecord::Base.transaction do
    iidx = Game.create!(title: 'beatmaniaIIDX')
    gf = Game.create!(title: 'GITADORA GuitarFreaks')

    mei = Music.create!(title: '冥', game: iidx)
    tpii = Music.create!(title: 'Timepiece phase II', game: gf)

    normal = ChartType.create!(game: iidx, name: 'NORMAL', display_order: 1)
    hyper = ChartType.create!(game: iidx, name: 'HYPER', display_order: 2)
    another = ChartType.create!(game: iidx, name: 'ANOTHER', display_order: 3)

    bsc_g = ChartType.create!(game: gf, name: 'BASIC(Guitar)', display_order: 1)
    mas_g = ChartType.create!(game: gf, name: 'MASTER(Guitar)', display_order: 4)
    bsc_b = ChartType.create!(game: gf, name: 'BASIC(Base)', display_order: 5)
    ext_b = ChartType.create!(game: gf, name: 'EXTREME(Base)', display_order: 7)

    Chart.create!(music: mei, chart_type: normal, difficulty: 6)
    Chart.create!(music: mei, chart_type: hyper, difficulty: 10)
    Chart.create!(music: mei, chart_type: another, difficulty: 12)
    Chart.create!(music: tpii, chart_type: bsc_g, difficulty: 6.95)
    Chart.create!(music: tpii, chart_type: mas_g, difficulty: 9.65)
    Chart.create!(music: tpii, chart_type: bsc_b, difficulty: 5.80)
    Chart.create!(music: tpii, chart_type: ext_b, difficulty: 8.10)
  end
end
